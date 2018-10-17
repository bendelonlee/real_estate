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
  def area
    @rooms.map(&:area).sum
  end
  def price_per_square_foot
    (@price.to_f / area).round(2)
  end
  def rooms_sorted_by_area
    @rooms.sort_by(&:area)
  end
  def rooms_by_category
    @rooms.group_by(&:category)
  end
end
