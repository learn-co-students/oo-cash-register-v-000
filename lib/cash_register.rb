class CashRegister
  attr_accessor :total
  attr_accessor :discount
  attr_accessor :title
  attr_accessor :price
  attr_accessor :quantity
  attr_accessor :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity=1)
    @quantity = quantity
    @title = title
    @price = price
    @total += price * quantity

    @quantity.times {@items << title}
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = @total-(@total*0.2)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @price
  end
end
