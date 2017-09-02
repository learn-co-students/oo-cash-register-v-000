class CashRegister
  attr_accessor  :total, :discount, :items, :last_transaction



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    @last_transaction = {}
    @last_transaction.store(title, price)
  end

  def apply_discount
    if @discount > 0
      @total -=(@total * (discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction.values[0]
  end




end
