module ViewComponentToolkit
  class ModalComponentPreview < ViewComponent::Preview
    def default
      render(ModalComponent.new(classes: theme_based_modal_classes)) do
        "Simple modal content"
      end
    end

    def with_header_and_footer
      render(ModalComponent.new(classes: theme_based_modal_classes)) do |modal|
        modal.with_header { "Modal Header" }
        "Modal Body Content"
        modal.with_footer { "Modal Footer" }
      end
    end

    def with_nested_components
      render(ModalComponent.new(classes: theme_based_modal_classes)) do |modal|
        modal.with_header do
          modal.render(ButtonComponent.new(text: "Close", classes: "close"))
        end

        tag.div(class: "card") do
          "This is a card-like div inside a modal"
        end

        modal.with_footer do
          safe_join([
            modal.render(ButtonComponent.new(text: "Cancel", classes: "btn-secondary")),
            modal.render(ButtonComponent.new(text: "Save", classes: "btn-primary"))
          ])
        end
      end
    end
    def with_trigger_button
      render_with_template(locals: {
        modal_id: 'exampleModal',
        button_text: 'Open Modal',
        modal_title: 'Example Modal',
        modal_body: 'This is the body of the modal.',
        modal_footer: 'Modal Footer'
      })
  end
    private

    def theme_based_modal_classes
      case ViewComponentToolkit.configuration.theme
      when :bootstrap
        "modal-dialog modal-dialog-centered"
      when :tailwind
        "fixed inset-0 z-50 overflow-auto bg-smoke-light flex"
      else
        ""
      end
    end
  end
end
