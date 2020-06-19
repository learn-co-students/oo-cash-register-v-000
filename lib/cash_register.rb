class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction


  def initialize(discount= 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity= 1)
    self.total += price * quantity
    @items << ("#{title} " * quantity).split(" ")
    @last_transaction = price
  end

  def apply_discount
    if @discount > 0
      self.total = @total * ((100.0 - @discount)/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.flatten
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end



end
