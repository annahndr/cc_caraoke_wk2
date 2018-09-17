
class Guest

attr_accessor :name, :wallet


def initialize(name, wallet)
  @name = name
  @wallet = wallet

end

def pay_for_room(cost)
  @wallet -= cost
end

# def get_wallet
#   return @wallet
# end

#should this be hard coded in? Should this function be in room?




##
end
