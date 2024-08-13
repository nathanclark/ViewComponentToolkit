# This file overrides the original <%= file_name.camelize %>Component from the ViewComponentToolkit gem.
# Original definition:
<%= original_component_content %>

# You can modify the component here:
module ViewComponentToolkit
  class <%= file_name.camelize %>Component < ViewComponentToolkit::BaseComponent
    # Override methods or add new ones here
  end
end
