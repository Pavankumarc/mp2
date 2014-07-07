require '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
   assert_equal "two hundred and thirty eight",Spell_digit.convert(238)
   assert_equal "nine hundred and ninty nine",Spell_digit.convert(999)
  end
end
