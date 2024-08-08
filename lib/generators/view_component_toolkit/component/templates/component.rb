module ViewComponentToolkit
  class <%= class_name %>Component < ViewComponentToolkit::BaseComponent
    <% attributes.each do |attribute| %>
    attr_reader :<%= attribute.name %>
    <% end %>

    def initialize(<%= attributes.map { |a| "#{a.name}:" }.join(", ") %>)
      <% attributes.each do |attribute| %>
      @<%= attribute.name %> = <%= attribute.name %>
      <% end %>
    end
  end
end
