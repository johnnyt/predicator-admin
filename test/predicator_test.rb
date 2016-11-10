require "test_helper"

module Predicator
  class Test < ActiveSupport::TestCase
    test "truth" do
      assert_kind_of Module, Predicator
    end
  end
end
