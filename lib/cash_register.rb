class CashRegister

  attr_accessor :total, :discount, :title, :price, :quantity, :items, :prices


  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end

#    def cash_register
#    end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @total = total + price * quantity
    quantity.times do
      @prices << price
    end
    quantity.times do
      @items << title
    end
  end


  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
  #   @discounted_total = @total * @discount / 100
     @total -= @total * @discount / 100
     "After the discount, the total comes to $#{total}."
    end
   # return @total
  end

  def itmes
    @items
  end

  def void_last_transaction
   #subtracts the last transaction from the total
    @total = 0
   # @total -= @prices[-1]
  end

end

