class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
   @total = 0
   @discount = discount
   @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @items << title
    end
      self.total += price * quantity
      self.last_transaction = price * quantity
   end

   def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total -= self.total * discount/100
      "After the discount, the total comes to $#{total}."
    end
   end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
