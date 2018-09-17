require("pry")

class Room

  attr_accessor :capacity, :cost, :till

  def initialize(capacity, cost, till)
  @capacity = capacity
  @cost = cost
  @till = till
  @songs_list = []
  @room_guests = []
  end

def add_song_to_room(song)
  @songs_list << song.name
end

#a method that returns @room_guests
def get_guest_list
  return @room_guests
end


def add_guest_to_room(guest)
  if @room_guests.length < @capacity && guest.wallet >= @cost
    @room_guests << guest
    return @room_guests
  end
end

def remove_guest_from_room(guest)
  @room_guests.delete(guest)
  return @room_guests
end


def sell_room
  @till += @cost
  return @till
end

#########need to sort out - how do I pull it all together?
def full_transaction(room, guest)

  #if there's capacity in the room
  # and enough money in wallet
  #run all the methods
  add_guest_to_room(guest)
  guest.pay_for_room(room.cost)
  sell_room
end







end
