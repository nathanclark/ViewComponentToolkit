module ViewComponentToolkit
  class ModalComponent < ViewComponentToolkit::BaseComponent
    component :modal

    renders_one :header
    renders_one :body
    renders_one :footer

    attr_reader :id, :classes

    def initialize(id:, classes: '')
      @id = id
      @classes = classes
    end

    def call
      content_tag :div, id: id, class: "modal fade #{theme_classes} #{classes}", tabindex: "-1", aria: { hidden: "true" } do
        content_tag :div, class: 'modal-dialog' do
          content_tag :div, class: 'modal-content' do
            safe_join([
              header_section,
              body_section,
              footer_section
            ])
          end
        end
      end
    end

    private

    def header_section
      return unless header

      content_tag(:div, header, class: "modal-header")
    end

    def body_section
      content_tag(:div, body || content, class: "modal-body")
    end

    def footer_section
      return unless footer

      content_tag(:div, footer, class: "modal-footer")
    end
  end
end
