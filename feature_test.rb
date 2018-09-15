# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices

load './lib/menu.rb'
menu = Menu.new
menu.list

# As a customer
# So that I can order the meal I want
# I would like to be able to select some number of several available dishes

load './lib/menu.rb'
menu = Menu.new
menu.list
menu.select_item("burger", 2)
menu.select_item("fries", 2)
