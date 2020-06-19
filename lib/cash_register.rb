class CashRegister

  attr_accessor :total, :title, :price, :discount, :quantity, :items, :last_item

  def initialize(discount=0)
    @total = total
    @discount = discount
    @total = 0
    @items = []
    @last_item = 0
  end

  def add_item(title, price, quantity=1)
    @title = title
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_item = price
  end

  def apply_discount
      @total = @total * ((1 - (@discount.to_f)/100))
      if @discount == 0
        return "There is no discount to apply."
      else
        return "After the discount, the total comes to $#{@total.to_i}."
      end
  end

  def void_last_transaction
    @total -= @last_item
  end

end
