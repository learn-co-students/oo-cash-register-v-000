require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_item


  def initialize(discount = 0)
      @total = 0
      @discount = discount
      @title_array = []
    end

  def add_item(title, price, quantity = 1)
    self.total = price * quantity + self.total
    quantity.times { @title_array << title }
    @last_item = price
  end

  def apply_discount
    discount_dollars = total * ( @discount.to_f / 100)
    @total = self.total - discount_dollars.to_i
    @total != 0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
  end

  def items
    @title_array
  end

  def void_last_transaction
  @total = self.total - self.last_item
  end

end
