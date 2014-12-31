if defined? RSpec
  module RSpec
    module Mocks
      module DoubleCheck
        def mocks_a?(into)
          doubled_const = Object.const_get(@doubled_module.const_to_replace)
          doubled_const <= into
        end
      end
      class VerifyingProxy
        include DoubleCheck
      end

      class InstanceVerifyingDouble
        include DoubleCheck
      end
    end
  end
end
