class Purchaser
  attr_reader :users

  def initialize(users)
    @users = users
  end

  def perform
    print "Enter which user you want to buy wishes for? "
    name = gets.chomp
    puts "\n\n"
    puts "The User has the following wishlists and items \n\n"
    print users[name].wish_lists
  end
end