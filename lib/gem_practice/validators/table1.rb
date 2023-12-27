module GemPractice
  module Validators
    class Table1
      class << self
        def valid?(hash_values)
          errors = {}
          errors[:name] = name_valid(hash_values[:name])

          errors.delete_if { |_, v| v.nil? }
        end

        private
        def name_valid(name)
          if name.nil?
            "名前を入力してください"
          elsif name.length < 3
            "名前は3文字以上にしてください"
          end
        end
      end
    end
  end
end