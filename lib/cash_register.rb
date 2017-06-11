

class CashRegister
  attr_accessor :total, :item, :price, :quantity, :discount, :transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @transaction = []
    @item_list = []
  end


  def total
    @total
  end


  def add_item(item, price, quantity = 1)
    quantity.times do |q|
      @item_list << item
      @transaction << price
      end
    self.total += quantity * price
  end


  def apply_discount
    if self.discount > 0
      self.total *= (1 - self.discount / 100.to_f)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @item_list
  end


  def void_last_transaction
    @total -= self.transaction.last
  end
end
