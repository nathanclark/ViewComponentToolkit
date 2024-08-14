<p align="center">
  <i>A flexible and customizable toolkit for building reusable ViewComponents in Ruby on Rails applications</i>
  <br/><br/>
  <img width="130" alt="ViewComponentToolkit" src="https://github.com/nathanclark/ViewComponentToolkit/blob/599254699da36bb8312428a562a766f3d77c9bb5/logo_150p.gif"/>
  <br/><br/>
</p>
Show Image
## Features

Customizable theming system with support for default, Bootstrap, and Tailwind CSS
Component generator for easy creation of new components
Hero component for creating attractive page headers
Ability to override components in Rails applications
Integration with Lookbook for component previewing and development

## Installation
Add this line to your application's Gemfile:
```ruby
gem 'view_component_toolkit'
```
And then execute:
```
bundle install
```
Or install it yourself as:
```
gem install view_component_toolkit
```
For development and preview functionality, add Lookbook to your Gemfile:
```ruby
gem 'lookbook', group: :development
```
## Usage
### Generating a new component
```
rails generate view_component_toolkit:component ComponentName
```
To generate a component directly in the gem's directory (for gem development):
```
rails generate view_component_toolkit:component ComponentName --gem-component
```
### Using a component in your views
```erb
<%= render(ViewComponentToolkit::HeroComponent.new(
title: "Welcome",
subtitle: "Explore our site",
background_image: "path/to/image.jpg"
)) do %>
<%= link_to "Learn More", about_path, class: "btn btn-primary" %>
<% end %>
```
### Customizing themes
In an initializer (e.g., config/initializers/view_component_toolkit.rb):
```ruby
ViewComponentToolkit.configure do |config|
config.theme = :custom
config.custom_themes[:custom] = {
button: 'my-custom-button-class',
hero: 'my-custom-hero-class',
# ... other component classes ...
}
end
```
### Overriding components
To override a component in your application:
```
rails generate view_component_toolkit:override ComponentName
```
This will create overridable files in your application's app/components directory.
### Nesting components
Many components support nesting. Here's an example using a hypothetical ContainerComponent:
```erb
<%= render(ViewComponentToolkit::ContainerComponent.new(classes: 'my-custom-class')) do %>
<%= render(ViewComponentToolkit::HeroComponent.new(title: "Welcome")) %>
<%= render(ViewComponentToolkit::ButtonComponent.new(text: "Click me")) %>
<% end %>
```
## Development
After checking out the repo, run bin/setup to install dependencies. Then, run rake test to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.
To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and the created tag, and push the .gem file to rubygems.org.
## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/nathanclark/view_component_toolkit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the code of conduct.
## License
The gem is available as open source under the terms of the MIT License.