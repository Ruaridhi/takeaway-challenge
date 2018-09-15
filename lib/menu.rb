class Menu
  attr_reader :menu_list, :my_order
  def initialize
    @menu_list = {burger: 10, fries: 4, soda: 2, milkshake: 4}
    @my_order = []
  end

  def list
    menu_list.each {|k,v| p "The #{k} is #{v}"}
  end

  def select_item(item, quant)
    # if !(@menu_list.has_key? (item))
    #   raise("Item not on the menu") #unless @menu_list.has_key? (item)
    # else
      @my_order <<  {item => quant}
      p "You have ordered #{quant} x #{item}"
  end

end
