require_relative '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
   assert_equal "thirty three",Spell_digit.convert(33)
   assert_equal "fifteen",Spell_digit.convert(15)
  end
end
