require '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase

  def test_hello
    assert true
  end


  def test_one
   assert_equal "two hundred and thirtyeight",Spell_digit.convert(238)
   assert_equal "nine thousand nine hundred and nintynine",Spell_digit.convert(9999)
  end
end
