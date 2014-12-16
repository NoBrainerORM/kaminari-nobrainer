require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['CI'] ? :ci : :development)

SPEC_ROOT = File.expand_path File.dirname(__FILE__)
Dir["#{SPEC_ROOT}/support/**/*.rb"].each { |f| require f unless File.basename(f) =~ /^_/ }

NoBrainer.configure do |config|
  config.app_name = :kaminari
  config.environment = :test
end

Kaminari::Hooks.init

RSpec.configure do |config|
  config.color = true
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end

  config.before(:each) do
    NoBrainer.purge!
  end
end
