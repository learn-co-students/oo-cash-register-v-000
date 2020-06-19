class CashRegister

  attr_accessor :total, :items
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    
    #add total price to @total
    @quantity > 0 ? self.total += (@price * @quantity) : self.total += @price

    #add item to items array
    quantity.times {@items << title}

    #keep record of last transaction
    @last_transaction_price = price
    @last_transaction_quantity = quantity
  end

  def apply_discount
    if @discount > 0
      "After the discount, the total comes to $#{self.total -= (self.total * @discount/100)}."
    else 
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= (@last_transaction_price * @last_transaction_quantity)
  end

end # <-- end 'CashRegister'
