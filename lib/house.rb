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
  def rooms_from_category(category)
    @rooms.select{|r|r.category == category}
  end
end
