require './item'

class User
  attr_reader :name, :wish_list

  def initialize(name)
    @name = name
    @wish_list = []
  end

  def add_item(name)
    @wish_list.push(Item.new(name))
  end
end