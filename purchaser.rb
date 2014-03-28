class Purchaser
  attr_reader :users

  def initialize(users)
    @users = users
  end

  def perform
    print "Enter which user you want to buy wishes for? "
    name = gets.chomp
    puts "\n\n"
    purchase_for_user(name)
  end

  def purchase_for_user(name)
    puts "The User has the following wishlists and items \n\n"
    print users[name].wish_lists

    puts "\n\nPick a wishlist and an item to purchase wish_list_name,item_name "
    list_name,item_name = gets.chomp.split(',')
    users[name].wish_lists[list_name].items[item_name].purchased = true

    print "Do you wanna buy more for #{name} y/n "
    while (yes = gets.chomp) == 'y'
      puts "Pick a wishlist and an item to purchase wish_list_name,item_name "
      list_name,item_name = gets.chomp.split(',')
      users[name].wish_lists[list_name].items[item_name].purchased = true
      print "Do you wanna buy more for #{name} y/n "
    end

    puts "So here is all wishlists after purchase #{@users[name].wish_lists}"

  end
end