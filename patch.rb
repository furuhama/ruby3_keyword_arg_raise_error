# frozen_string_literal: true

class << Warning
  prepend Module.new {
    def warn(str)
      raise "This usage of keyword argument will NOT be supported on Ruby 3" if /warning: The (keyword|last) argument/ =~ str

      super
    end
  }
end
