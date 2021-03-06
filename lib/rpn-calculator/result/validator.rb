require 'rpn-calculator/result/input'

module RPNCalculator
  module Result
    class Validator < Input
      def initialize(invalid_characters = [])
        @invalid_characters = invalid_characters
      end

      def valid?
        invalid_characters.empty?
      end

      def error
        "Invalid characters: #{invalid_character_list}" unless valid?
      end

      def result
        []
      end

      private

      attr_reader :invalid_characters

      def invalid_character_list
        invalid_characters.join(', ')
      end
    end
  end
end
