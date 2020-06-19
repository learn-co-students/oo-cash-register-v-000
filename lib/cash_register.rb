class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
      @last_transaction = price * quantity
      @total += @last_transaction
      counter = quantity
      while counter > 0
        @items.push(title)
        counter -= 1
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
    @total -= @last_transaction
    @total
  end


end
