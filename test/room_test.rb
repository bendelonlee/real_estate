
require 'minitest/autorun'
require './lib/room'

class RoomTest < Minitest::Test
  def test_room_category_can_be_set
    room = Room.new(:bedroom, 10, 13)
    assert_equal :bedroom, room.category
  end
  def test_room_area
    room = Room.new(:bedroom, 10, 13)
    assert_equal 130, room.area
  end


end

=begin
```ruby
pry(main)> require './lib/room'
#=> true

pry(main)> room = Room.new(:bedroom, 10, 13)
#=> #<Room:0x00007fa53b9ca0a8...>

pry(main)> room.category
#=> :bedroom

pry(main)> room.area
#=> 130
=end
