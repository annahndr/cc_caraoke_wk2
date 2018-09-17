require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")

class GuestTest < Minitest::Test

def setup

@room = Room.new(3, 10, 200)

@guest1 = Guest.new("Carrie", 20)
@guest2 = Guest.new("Samantha", 50)
@guest3 = Guest.new("Miranda", 50)
@guest4 = Guest.new("Charlotte", 40)

end

def test_get_guest_name
  assert_equal("Miranda", @guest3.name)
end

def test_get_wallet
  assert_equal(40, @guest4.wallet)
end

def test_pay_for_room
  assert_equal(10, @guest1.pay_for_room(@room.cost))
end



# def test_add_guest
#   assert_equal(["Charlotte"], @guest4.add_guest)
# end
#
# def test_remove_guest
#   @guest4.add_guest
#   assert_equal([], @guest4.remove_guest)
# end

##
end
