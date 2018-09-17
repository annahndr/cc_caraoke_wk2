require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < Minitest::Test

def setup

@room = Room.new(3, 10, 200)
@song1 = Song.new("Respect")
@song2 = Song.new("It's Raining Men")

@guest1 = Guest.new("Carrie", 20)
@guest2 = Guest.new("Samantha", 50)
@guest3 = Guest.new("Miranda", 50)
@guest4 = Guest.new("Charlotte", 40)

end

def test_get_capacity
  assert_equal(3, @room.capacity)
end

def test_get_cost
  assert_equal(10, @room.cost)
end

def test_add_song_to_room
  assert_equal(["Respect"], @room.add_song_to_room(@song1))
end

def test_add_guest_to_room
  assert_equal([@guest2], @room.add_guest_to_room(@guest2))
end

def test_remove_guest_from_room
  @room.add_guest_to_room(@guest3)
  @room.add_guest_to_room(@guest2)
  assert_equal([@guest2], @room.remove_guest_from_room(@guest3))
end

def test_add_guest_to_full_room
  @room.add_guest_to_room(@guest1)
  @room.add_guest_to_room(@guest2)
  @room.add_guest_to_room(@guest3)
  assert_nil(@room.add_guest_to_room(@guest4))
  #should I really just be returning the array of 3 people?
end

def test_sell_room
  assert_equal(210, @room.sell_room)
end

#######ß
def test_full_transaction
  @room.full_transaction(@room, @guest1)
  assert_equal([@guest1], @room.get_guest_list)
  assert_equal(10, @guest1.wallet)
  assert_equal(210, @room.till)
end

##
end
