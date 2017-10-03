class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 0)
    if quantity != 0
      new_price = price * quantity
      @total += new_price
      counter = quantity
      while counter > 0
        @items.push(title)
        counter -= 1
      end
    else
      @total += price
      @items.push(title)
    end
  end

  def apply_discount
    if @discount != 0
      percent = 100 - @discount
      @total = @total * percent / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
    @total
  end


end
