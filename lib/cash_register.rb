class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@all = []
  end


  def add_item(title,price,quantity=1)
    self.total = self.total + price*quantity
    i = 0
    while i < quantity
      @@all << [title,price]
      i += 1
    end
  end

  def apply_discount
    if self.discount != 0
      self.total = self.total - self.discount
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    list_of_items = []
    @@all.each {|list|
      list_of_items << list[0]
    }
    list_of_items
  end

  def void_last_transaction
    self.total = self.total - @@all.last[1]
  end
end
