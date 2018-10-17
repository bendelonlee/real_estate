
require 'minitest/autorun'
require './lib/room'
require './lib/house'

class HouseTest < Minitest::Test

  def help_setup_large_house
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, 13)
    @room_2 = Room.new(:bedroom, 11, 15)
    @room_3 = Room.new(:living_room, 25, 15)
    @room_4 = Room.new(:basement, 30, 41)
    @house.add_room(@room_1)
    @house.add_room(@room_2)
    @house.add_room(@room_3)
    @house.add_room(@room_4)
  end

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

  def test_rooms_from_category
    help_setup_large_house
    assert_equal [@room_1, @room_2], @house.rooms_from_category(:bedroom)
    assert_equal [@room_4], @house.rooms_from_category(:basement)
  end

  def test_house_area
    help_setup_large_house
    assert_equal 1900, @house.area
  end



end
