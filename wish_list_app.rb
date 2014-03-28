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

    puts "So here is all your wishlists #{user.wish_list}"
  end

  def prompt_user_and_add_item
    print "Please enter a name for your wishlist "
    user_input = gets.chomp
    user.add_item(user_input)
  end

end

WishListApp.new("Jenny").perform
