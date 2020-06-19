

class CashRegister

  attr_accessor :total, :discount, :last_trans_amnt

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, qty = 1)

    @last_trans_amnt = price

    counter = 0

    loop do
      if counter < qty
        items << title
        counter += 1
      else
        break
      end
    end

    if qty > 0
      @total = @total + (price*qty)
    else
      @total = @total + price
    end
  end

  def apply_discount
    if @discount > 0
      @total = @total - (@total.to_f*(@discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - @last_trans_amnt
  end

end
