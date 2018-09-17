require("minitest/autorun")
require("minitest/rg")
require_relative("../song")
require_relative("../room")

class SongTest < Minitest::Test

  def setup
    @song1 = Song.new("It's Raining Men")
    @song2 = Song.new("Respect")
  end

  def test_get_name
    assert_equal("It's Raining Men", @song1.name)
  end

  # def test_add_song_to_room
  #   assert_equal(["It's Raining Men", @song1.add_song_to_room)
  # end
##
end
