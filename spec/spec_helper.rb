$TESTING = true
$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')

$CODECLIMATE_REPO_TOKEN = 'c430a114ad74e5230870715218d166bf0394c5aec989d4152f7576dd6f93fbd8'

require 'rspec/its'
require 'napoleon'
require 'rspec/given'
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec

  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.order = 'random'
end
