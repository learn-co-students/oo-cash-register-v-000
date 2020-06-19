class CashRegister
  attr_accessor :total, :discount, :last_transaction, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def add_item(name, price, quantity = 1)
    @last_transaction = price * quantity
    self.total = total + last_transaction
    counter = 0
    until quantity == counter
      @items << "#{name}"
      counter += 1
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
    self.discount = discount * 0.01
    self.total = total - (total*self.discount)
    return "After the discount, the total comes to $#{self.total.to_i}."
  end
end

  def items
    @items
  end

  def void_last_transaction
    return self.total = total - last_transaction
  end

end
