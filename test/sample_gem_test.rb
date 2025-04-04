# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/power_assert'
require 'sample_gem'

class SampleGemTest < Minitest::Test
  def test_half
    assert { SampleGem.half(10) == 5 }
    assert { SampleGem.half(0).zero? }
    assert { SampleGem.half(-10) == 5 }
  end
end
