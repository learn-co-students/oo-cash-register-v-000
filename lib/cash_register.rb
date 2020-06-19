=begin
class CashRegister
  attr_accessor :total, :discount
    @@items = []
    @@last_item = []

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@items.clear
  end
  def discount
     @discount
   end


  def add_item(title, price, quantity = 1)

    @total += (price * quantity)
    @@last_item[0], @@last_item[1], @@last_item[2] = title, price, quantity

    while quantity > 0
      @@items << title
      quantity -= 1
    end
  end
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= (@total * (@discount / 100.to_f))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  def items
    @@items
  end

  def void_last_transaction
    price, quantity = @@last_item[1], price = @@last_item[2]
    @total -= (price * quantity)
    @@last_item.clear
    @@items.slice!(-1,quantity)
  end

end
=end
class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
