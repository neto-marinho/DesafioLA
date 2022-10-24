require    'httparty'
require    'openssl'
require    'httparty/request'
require    'httparty/response/headers'
require    'rspec'
require    'allure-cucumber'

Cucumber::Core::Test::Step.module_eval do
   def name
     return text if text == 'Before hook'
     return text if text == 'After hook'
     "#{source.last.keyword}#{text}"
   end
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end