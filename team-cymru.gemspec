# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{team-cymru}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Lee"]
  s.cert_chain = ["/Users/chris/Document/projects/rubygems/gem-public_cert.pem"]
  s.date = %q{2011-05-03}
  s.description = %q{ruby library and tools that query Cymru's ASN, Malware, and FullBogon services}
  s.email = %q{rubygems@chrislee.dhs.org}
  s.executables = ["cymru_asn", "cymru_bogon", "cymru_malware", "cymru_twitter"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "bin/cymru_asn",
    "bin/cymru_bogon",
    "bin/cymru_malware",
    "bin/cymru_twitter",
    "lib/team-cymru.rb",
    "lib/team-cymru/asnclient.rb",
    "lib/team-cymru/bogon.rb",
    "lib/team-cymru/malware.rb",
    "lib/team-cymru/structformatter.rb",
    "lib/team-cymru/twitterfeed.rb"
  ]
  s.homepage = %q{http://github.com/chrislee35/team-cymru}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.signing_key = %q{/Users/chris/Document/projects/rubygems/gem-private_key.pem}
  s.summary = %q{queries Cymru's ASN, Malware, and FullBogon services}
  s.test_files = [
    "test/helper.rb",
    "test/test_team-cymru.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<twitter>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<ruby-cache>, [">= 0.3.0"])
      s.add_runtime_dependency(%q<json>, [">= 1.4.3"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 1.4.3"])
      s.add_runtime_dependency(%q<twitter>, [">= 1.1.2"])
      s.add_runtime_dependency(%q<ruby-cache>, [">= 0.3.0"])
    else
      s.add_dependency(%q<twitter>, [">= 1.1.2"])
      s.add_dependency(%q<ruby-cache>, [">= 0.3.0"])
      s.add_dependency(%q<json>, [">= 1.4.3"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<json>, [">= 1.4.3"])
      s.add_dependency(%q<twitter>, [">= 1.1.2"])
      s.add_dependency(%q<ruby-cache>, [">= 0.3.0"])
    end
  else
    s.add_dependency(%q<twitter>, [">= 1.1.2"])
    s.add_dependency(%q<ruby-cache>, [">= 0.3.0"])
    s.add_dependency(%q<json>, [">= 1.4.3"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<json>, [">= 1.4.3"])
    s.add_dependency(%q<twitter>, [">= 1.1.2"])
    s.add_dependency(%q<ruby-cache>, [">= 0.3.0"])
  end
end
