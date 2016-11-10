# Configure Rails Environment
ENV["RAILS_ENV"] = "test"
dummy_path = File.expand_path "../../test/dummy", __FILE__

require File.join(dummy_path, "config/environment")
ActiveRecord::Migrator.migrations_paths = [
  File.join(dummy_path, "dummy/db/migrate"),
  File.expand_path("../../db/migrate", __FILE__)
]
require "rails/test_help"

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

# Load fixtures from the engine
TC = ActiveSupport::TestCase
if TC.respond_to?(:fixture_path=)
  TC.fixture_path = File.expand_path("../fixtures", __FILE__)
  ActionDispatch::IntegrationTest.fixture_path = TC.fixture_path
  TC.file_fixture_path = TC.fixture_path + "/files"
  TC.fixtures :all
end
