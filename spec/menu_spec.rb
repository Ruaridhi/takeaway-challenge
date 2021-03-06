require "menu"

describe Menu do

  describe "#list" do
    it "responds to list method" do
      expect(subject).to respond_to(:list)
    end
    it "displays the menu list" do
      expect(subject.list).to eq({burger: 10, fries: 4, soda: 2, milkshake: 4})
    end
  end

  describe "#select_item" do
    it "responds to select_item" do
      expect(subject).to respond_to(:select_item).with(2).arguments
    end
    it "should raise an error if the selected items not on menu" do
      expect{subject.select_item(:pizza, 10)}.to raise_error("Item not on the menu")
    end
    it "selects an item from the menu with quantity" do
      subject.select_item("burger", 2)
      expect(subject.my_order).to eq(:burger=>2)#([{:item => "burger", :quant => 2}])
    end
  end

  describe "#total" do
    it "give you total cost of the order" do
      subject.select_item("burger", 1)
      subject.select_item("fries", 1)
      subject.select_item("soda", 1)
      expect(subject.total).to eq("Your total bill is £#{total}")
    end
  end

end
