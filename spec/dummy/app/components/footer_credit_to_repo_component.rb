module ViewComponentToolkit
  class FooterCreditToRepoComponent < ViewComponentToolkit::BaseComponent
    def initialize()
      
    end

    def call
      content_tag :div, class: Theme.get_class(:footer_credit_to_repo) do
        #
      end
    end
  end
end
