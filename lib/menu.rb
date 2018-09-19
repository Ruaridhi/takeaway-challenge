class Menu
  attr_reader :menu_list, :my_order
  def initialize
    @menu_list = {burger: 10, fries: 4, soda: 2, milkshake: 4}
    #@my_order = []
    @my_order = {}
  end

  def list
    menu_list.each do |k,v|
      p "The #{k} is #{v}"
    end

  end

  def select_item(item, quant)

    fail ("Item not on the menu") if !(@menu_list.has_key?(item.to_sym))
    @my_order[item.to_sym] = quant
    p @my_order
    #  "You have ordered #{quant} x #{item}"
  end

  def total
    total = 0
    @menu_list
    @my_order
    @my_order.map { |k, v| total += @menu_list[k] * v }
    p "Your total bill is £#{total}"
  end

end
