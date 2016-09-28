class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_transaction

  def initialize(discount=0) #Allows to initialize with or without discount
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1) #Allows to add single or multiple items at same time
    @title = title
    @price = price
    @quantity = quantity
    @total += (price*quantity) #Updates the total
    @last_transaction = price*quantity #Keeps track of last transaction
    @items.concat(Array.new(quantity, title)) #Adds multiple items multiple times on the items list
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= ((@total*@discount)/100) #Discount method could be applied differently, but would run into float and decimal issues
      "After the discount, the total comes to $#{@total}."
    end
  end

  # def items does not need to be defined explicitly since it's covered in the attr_accessor method

  def void_last_transaction #Subtracts the last item from the total
    @total -= @last_transaction
  end
end
