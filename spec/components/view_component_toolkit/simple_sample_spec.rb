# frozen_string_literal: true
require 'spec_helper'

RSpec.describe ViewComponentToolkit::SimpleSample, type: :component do
  it 'renders the attribute' do
    attribute = 'Hello, World!'
    result = render_inline(ViewComponentToolkit::SimpleSample.new(attribute: attribute))
    expect(result.to_html).to include(attribute)
  end

  it 'renders within a div' do
    result = render_inline(ViewComponentToolkit::SimpleSample.new(attribute: 'Test'))
    expect(result.to_html).to include('<div>Test</div>')
  end
end
