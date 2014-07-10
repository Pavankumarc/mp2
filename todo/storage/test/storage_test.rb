require  '../lib/storage'
require 'test/unit'

class TestStorage < Test::Unit::TestCase

def test2
assert_equal 3,Storage.dump
end



end

