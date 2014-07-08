require  '../lib/storage'
require 'test/unit'
class TestStorage < Test::Unit::TestCase

def test
assert_equal "helloworld",Storage.dump(text.txt)
end
end

