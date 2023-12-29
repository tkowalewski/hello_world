# frozen_string_literal: true

module HelloWorld
  class ExampleComponent < ViewComponent::Base
    def initialize(text:)
      @text = text
    end
  end
end
