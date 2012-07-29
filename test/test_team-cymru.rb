require 'helper'

class TestTeamCymru < Test::Unit::TestCase
  should "performs ASN queries" do
    c = Cymru::ASNClient.new
    res = c.lookup("130.207.244.251")
    assert_equal("2637    | 130.207.244.251  | 130.207.0.0/16      | US | arin     | 1988-10-10 |  | GEORGIA-TECH - Georgia Institute of Technology",res.to_s)
    assert(! res.from_cache?)
    # this should pull from cache
    res = c.lookup("130.207.244.252")
    assert_equal("2637    | 130.207.244.252  | 130.207.0.0/16      | US | arin     | 1988-10-10 |  | GEORGIA-TECH - Georgia Institute of Technology",res.to_s)
    assert(res.from_cache?)
  end

  should "lookup bogons" do
    c = Cymru::Bogon.new
    assert(c.bogon?("127.0.5.27"))
    assert(c.bogon?("2001:DB8:FEEB:DEEF::242"))
    assert(! c.bogon?("130.207.244.251"))
    assert(! c.bogon?("2a00:1450:8003::93"))
  end

  should "lookup malware hashes" do
    c = Cymru::Malware.new
    hashes = ["7697561ccbbdd1661c25c86762117613","cbed16069043a0bf3c92fff9a99cccdc"]
    res = c.lookup(hashes)
    assert_equal("7697561ccbbdd1661c25c86762117613",res[0].hash)
    assert_equal(0,res[0].percent_detect)
    assert_equal("cbed16069043a0bf3c92fff9a99cccdc",res[1].hash)
    assert(res[1].percent_detect > 50)
  end

  should "display twitter feed" do
    c = Cymru::TwitterFeed.new
    assert(! c.messages.empty?)
  end
end
