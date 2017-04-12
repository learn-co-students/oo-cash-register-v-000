
class CashRegister

  attr_accessor :total, :discount, :title


  def initialize(discount = nil)
    @all = []
    @total = 0
    @discount = discount.to_i
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @price = price
    quantity.times do @all << title end
    # @title = title

  end

  def apply_discount
    if @discount == 0 || nil
      return "There is no discount to apply."
    else
        @discount = @discount*0.01
        @total= @total - @total*@discount
        @total = @total.to_i
        return "After the discount, the total comes to $#{@total}."
      end
  end

  def items
    @all
  end

  def void_last_transaction
    @total = @total - @price
  end

end
