require 'bundler/setup'
Bundler.setup
require 'fb-feed'

RSpec.configure do |c|
  c.disable_monkey_patching!

  c.before(:suite) do
    logger.info "init.rspec Starting test suite execution"
  end

  c.before(:each) do |example|
    logger.info "spec.rspec #{example.full_description}"
  end
end
