module GemPractice
  module Validators
    class Errors
      def initialize
        @errors = {}
      end

      def message(attribute)
        @errors[attribute]
      end

      def add(attribute, message)
        @errors[attribute] ||= []
        @errors[attribute] << message
      end
    end
  end
end
