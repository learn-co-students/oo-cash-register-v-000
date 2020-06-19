class CashRegister
  attr_accessor :total
  attr_accessor :discount
  attr_accessor :last_transaction_amt

  def initialize(discount=nil)
    @total = 0
    @previous_total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=nil)
    if quantity
      quantity.times do
        @items << title
      end
    else
      @items << title
    end

    @previous_total = @total
    # new_item_cost = quantity ? price * quantity : price
    # @total = self.total + new_item_cost
    self.last_transaction_amt = quantity ? price * quantity : price
    @total = self.total + self.last_transaction_amt

    @total.to_i
  end

  def apply_discount
    if @discount
      #self.total = 1000
      @total = self.total - (@discount.to_f/100 * self.total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def total
    @total
  end

  def items
    @items
  end

  def void_last_transaction
    #subtracts last transaction from the total
    #set attr_accessor for last transaction amt
    @total = self.total - self.last_transaction_amt
  end
end
