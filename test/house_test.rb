
require 'minitest/autorun'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test
  def test_house_price_can_be_set
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
  end
  def test_house_address_can_be_set
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end
  def test_house_starts_with_no_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end
  def test_house_can_have_rooms_added
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_1)
    house.add_room(room_2)
    assert_equal [room_1, room_2], house.rooms
  end


end
