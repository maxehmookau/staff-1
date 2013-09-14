ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)

require 'rails/test_help'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  extend MiniTest::Spec::DSL
  include FactoryGirl::Syntax::Methods

end
