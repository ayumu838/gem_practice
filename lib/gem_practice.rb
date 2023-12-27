# frozen_string_literal: true

require_relative "gem_practice/version"
require_relative "gem_practice/validators/table1"

module GemPractice
  class Error < StandardError; end

  class << self
    def valid?(hash_values)
      Validators::Table1.valid?(hash_values)
    end
  end
end
