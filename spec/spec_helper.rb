require 'view_component_toolkit'
require 'view_component/test_helpers'
require 'active_support'
require 'action_controller'
require 'action_view'
require_relative '../config/application'
# Create a minimal application-like environment
class ApplicationController < ActionController::Base
end

class TestController < ApplicationController
  include ActionView::Context
end

RSpec.configure do |config|
  config.include ViewComponent::TestHelpers
  config.before(:each, type: :component) do
    @controller = TestController.new
    @request = ActionDispatch::TestRequest.create
    @controller.request = @request
    @controller.request.session = {}
  end
end
