class House
  attr_reader :rooms, :price, :address
  def initialize(price, address)
    @price = price[/\d+/].to_i
    @address = address
    @rooms = []
  end
  def add_room(room)
    @rooms << room
  end
end
