class Item
  attr_accessor :name, :price
  @@items = []
  def initialize(name,price)
    @name = name
    @price = price
    @@items << self
  end

  def self.all
    @@items
  end

  def self.find_by_name(name)
    Item.all.select do |item|
      item.name == name
    end
  end


end
