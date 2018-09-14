require "menu"

describe Menu do

  it "displays the menu list" do
    expect(subject.display_menu).to respond_to(burger: 10, frie: 4, soda: 2, milkshake: 4)
  end

end
