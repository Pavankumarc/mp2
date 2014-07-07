require '../lib/numbers'
require 'test/unit'


class TestNumbers < Test::Unit::TestCase



def test_num
assert_equal '1st',Numbers.convert(1)
assert_equal '2nd',Numbers.convert(2)
assert_equal '3rd',Numbers.convert(3)
assert_equal '4th',Numbers.convert(4)
assert_equal '5th',Numbers.convert(5)
assert_equal '31st',Numbers.convert(31)
assert_equal '28th',Numbers.convert(28)
assert_equal '10th',Numbers.convert(10)
assert_equal '16th',Numbers.convert(16)
assert_equal '23rd',Numbers.convert(23)
assert_equal '22nd',Numbers.convert(22)
  end



end 
