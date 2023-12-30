require "pry"

require_relative "errors"

module GemPractice
  module Validators
    class Table1
      attr_reader :hash_values, :errors

      def initialize(hash_values)
        @hash_values = hash_values
      end

      def valid?
        name_valid(hash_values[:name])
      end

      def errors
        @errors ||= GemPractice::Validators::Errors.new
      end

      private

      def name_valid(name)
        if name.nil?
          errors.add(:name, "名前を入力してください")
        elsif name.length < 3
          errors.add(:name, "名前は3文字以上にしてください")
        end
      end
    end
  end
end
