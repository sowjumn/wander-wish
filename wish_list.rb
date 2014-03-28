require './item'

class WishList
  attr_reader :name, :items

  def initialize(name)
    @name = name
    @items = {}
  end

  def add_item(name)
    @items[name]= Item.new(name)
  end
end
