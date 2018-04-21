# cash_register.rb

class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity

  def initialize(discount = 0)      # optionally takes an employee discount on initialization
    @total = 0                      #sets an instance variable @total on initialization to zero
    @discount = discount
    @items = []                    # stores all title attributes for individual instance of cash_register
    @transactions = []             # stores all transactions for individual instance of cash_register
  end

  def add_item(title, price, quantity = 0)
    @title = title                   # accepts a title and a price
    @price = price
    @quantity = quantity              # also accepts an optional quantity

    if quantity > 0
      @items.fill(@title, @items.size, @quantity)
      self.total += (@price * @quantity)
    else                            # doesn't forget about the previous total
      @items << self.title
      self.total += (@price)        # increases the total by using '+='
    end
    @transactions << self
  end

  def total=(total)               # returns the current total
      @total = total
  end

  def apply_discount              # applies the discount to the total price
    if @discount <= 0
      p "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      p "After the discount, the total comes to $#{@total}."
    end
  end

  def items                       # returns an array containing all items that have been added
    @items                       # and saved in #add_item method
  end

  def void_last_transaction       # subtracts the last transaction from the total
    @total -= @total
  end
end
