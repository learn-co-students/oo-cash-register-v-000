# cash_register.rb

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)   #employee discount on initialization optional
    @total = 0
    @discount = discount
    @items = []                  # stores all titles instance of cash_register
    @transactions = []           # stores all transactions cash_register
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity

    @items.fill(@title, @items.size, @quantity)
    self.total += (@price * @quantity)
    @transactions << self
  end

  def apply_discount              # applies the discount to the total price
    if @discount <= 0
      p "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      p "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction       # subtracts the last transaction from the total
    @total -= @total
  end
end
