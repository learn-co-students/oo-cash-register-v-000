class CashRegister

  attr_accessor :discount, :total, :title, :price, :last

  def initialize(discount = 0)
    @discount = discount
    @total = 0.0
    @title = []
    @last = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @title << title
    end

    quantity.times do
      @last << price
    end

    @total = price * quantity + @total
  end


def apply_discount
    if @discount > 0
      @total -= total * @discount/100
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @title
  end

  def void_last_transaction
    @total = @total - @last.last
  end

end

