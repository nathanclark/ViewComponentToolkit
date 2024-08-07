# lib/tasks/development.rake
namespace :view_component_toolkit do
  desc "Start development server with Lookbook"
  task :server do
    dummy_app_path = File.expand_path('../../spec/dummy', __dir__)
    puts "Starting server in #{dummy_app_path}"
    system "cd #{dummy_app_path} && bundle exec rails server"
  end
end
