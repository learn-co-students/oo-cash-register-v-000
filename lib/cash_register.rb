class CashRegister

  attr_accessor :total, :discount, :items, :price, :last_item

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_item = {cost: nil, amount: nil}
  end

  def apply_discount
      self.total = self.total*(100 - self.discount)*0.01
      if self.discount == 0
        "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total.to_i}."
      end
  end
  
  def add_item(title, price, quantity=1)
    self.last_item[:cost] = price*quantity
    self.total += self.last_item[:cost]
    self.last_item[:amount] = [title] * quantity
    self.items += self.last_item[:amount]
  end

  def void_last_transaction
    self.total = self.total - self.last_item[:cost]
  end
  



end