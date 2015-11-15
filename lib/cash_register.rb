class CashRegister
  attr_accessor :total, :discount, :quantity, :all_items, :last_transaction

  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @all_items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times { all_items << title }
    self.last_transaction = price * quantity
  end

  def apply_discount
    self.total -= (self.total * (discount / 100.to_f)).to_i

    if discount == 0
      return "There is no discount to apply." 
    else
      return "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    all_items
  end

  def void_last_transaction
    self.total -= last_transaction
  end
end
