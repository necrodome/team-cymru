require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "team-cymru"
  gem.homepage = "http://github.com/chrislee35/team-cymru"
  gem.license = "MIT"
  gem.summary = %Q{queries Cymru's ASN, Malware, and FullBogon services}
  gem.description = %Q{ruby library and tools that query Cymru's ASN, Malware, and FullBogon services}
  gem.email = "rubygems@chrislee.dhs.org"
  gem.authors = ["Chris Lee"]
  # gem.signing_key = "#{ENV['HOME']}/Documents/projects/rubygems/gem-private_key.pem"
  # gem.cert_chain  = ["#{ENV['HOME']}/Documents/projects/rubygems/gem-public_cert.pem"]
  gem.files = FileList["{bin,lib}/**/*"].to_a
  gem.executables = ["cymru_asn", "cymru_bogon", "cymru_malware", "cymru_twitter"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'json', '>= 1.4.3'
  gem.add_runtime_dependency "twitter", ">= 1.1.2"
  gem.add_runtime_dependency "ruby-cache", ">= 0.3.0"
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "team-cymru #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
