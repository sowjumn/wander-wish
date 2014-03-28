require './wish_list'

class User
  attr_reader :name, :wish_lists

  def initialize(name)
    @name = name
    @wish_lists = {}
  end

  def add_item_to_wish_list(item_name,list_name)
    if wish_lists[list_name]
      wish_lists[list_name].add_item(item_name)
    else
      @wish_lists[list_name] = WishList.new(list_name)
      wish_lists[list_name].add_item(item_name)
    end
  end
end