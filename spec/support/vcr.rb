require 'vcr'
YAML::ENGINE.yamler = 'syck'

VCR.config do |c|
  c.cassette_library_dir = File.dirname(__FILE__) + '/../fixtures/cassette_library'
  c.default_cassette_options = { :record => :new_episodes }
  c.stub_with :webmock
end

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end