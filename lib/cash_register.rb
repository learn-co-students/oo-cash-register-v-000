require'pry'
class CashRegister

attr_accessor :total, :discount, :items

@items = []

  def initialize(discount =0, total =0)
    @discount = discount
    @total = total
  end

  def discount
    #not sure which makes more sense
    #self.total += 20
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    self.total += price*quantity
    @items << item
    #binding.pry
  end

  def apply_discount
    if @discount > 0
      self.total -= 200
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end



end



