require './user'

class WishListApp
  attr_reader :user

  def initialize(name)
    @user = User.new(name)
  end

  def perform 
    puts "Hello #{user.name}!! welcome to WishListApp "
    prompt_user_and_add_item
    print "Do you want to add more (y/n)?? "
    while ((user_input = gets.chomp) == 'y')
      prompt_user_and_add_item
      print "Do you want to add more (y/n)?? "
    end

    puts "So here is all your wishlists #{user.wish_lists}"
  end

  def prompt_user_and_add_item
    print "Please enter an item to add to your wishlist with the format item_name,wish_list_name  "
    user_input = gets.chomp.split(',')
    user.add_item_to_wish_list(user_input[0],user_input[1])
  end

end

WishListApp.new("Jenny").perform
