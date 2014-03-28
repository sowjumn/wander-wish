require './user'
require './purchaser'

class WishListApp
  attr_reader :users, :purchaser

  def initialize
    @users = {}
  end

  def add_user(name)
    @users[name] = User.new(name)
  end

  def populate_wishlist(username) 
    puts "Hello #{username}!! welcome to WishListApp "
    prompt_user_and_add_item(username)
    print "Do you want to add more (y/n)?? "
    while ((user_input = gets.chomp) == 'y')
      prompt_user_and_add_item(username)
      print "Do you want to add more (y/n)?? "
    end

    puts "So here is all your wishlists #{@users[username].wish_lists}"
    users
  end

  def prompt_user_and_add_item(username)
    print "Please enter an item to add to your wishlist with the format item_name,wish_list_name  "
    user_input = gets.chomp.split(',')
    @users[username].add_item_to_wish_list(user_input[0],user_input[1])
  end

  def purchase
    @purchaser = Purchaser.new(users)
    purchaser.perform
  end

end

wish_list_app = WishListApp.new
wish_list_app.add_user("Jenny")
wish_list_app.populate_wishlist("Jenny")

wish_list_app.add_user("Sowju")
wish_list_app.populate_wishlist("Sowju")

wish_list_app.purchase


