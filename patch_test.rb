# frozen_string_literal: true

require_relative 'patch.rb'

RSpec.describe 'Raise error with this patch' do
  before do
    def foo1(key: 42); end
    def foo2(**kw); end
    def foo3(x, y, z: nil); end
  end

  context 'valid' do
    it do
      expect { foo1(**{ key: 42 }) }.not_to raise_error
      expect { foo2(**{ key: 42 }) }.not_to raise_error
    end
  end

  context 'invalid' do
    it do
      expect { foo1({ key: 42 }) }.to raise_error
      expect { foo2({ key: 42 }) }.to raise_error
      expect { foo3('x', y: 'y', z: 'z') }.to raise_error
    end
  end
end
