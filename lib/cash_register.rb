class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)

    @title = title
    @price = price
    @quantity = quantity
    @total = @total + @quantity * @price
    @quantity.times do
      @items << @title
    end
  end

  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    else
      @total = @total - (@total * @discount/100)
      return "After the discount, the total comes to $#{total}."
    end
  end

  def void_last_transaction
    @total = @total - @quantity * @price
  end

end
