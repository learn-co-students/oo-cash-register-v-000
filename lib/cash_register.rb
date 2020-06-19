class CashRegister

  attr_accessor :total, :discount, :price, :title, :previous_total, :items, :transaction


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end


  def total
    @total
  end


  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @transaction = price * quantity
    @total += @transaction
    while quantity > 0
      @items << title
      quantity -= 1
    end
  end


  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @total = @total - (@total*@discount/100)
    "After the discount, the total comes to $#{@total}."
    end
  end


  def items
    @items
  end


  def void_last_transaction
    @total -= @transaction
  end


end
