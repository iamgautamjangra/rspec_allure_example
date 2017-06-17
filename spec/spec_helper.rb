require 'rspec'
require 'allure-rspec'

RSpec.configure do |c|
  c.include AllureRSpec::Adaptor
end

AllureRSpec.configure do |c|
  c.output_dir = "log/screenshots"
  c.clean_dir = false
end
