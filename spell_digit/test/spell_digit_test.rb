require '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
   assert_equal "two",Spell_digit.convert(2)
   assert_equal "ten",Spell_digit.convert(10)
  end
end
