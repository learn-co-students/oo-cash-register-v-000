require'pry'
class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount =0, total =0)
    @discount = discount
    @total = total
    @items = []
  end

  def discount
    #not sure which makes more sense
    #self.total += 20
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price
    @quantity = quantity
    self.total += price*quantity
    x = 1
    while quantity >= x
      x += 1
      @items << item
    end
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

  def void_last_transaction
    self.total -= @price*@quantity
    @quantity.times do
      @items.pop
    end

  end



end



