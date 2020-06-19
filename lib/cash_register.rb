class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end
  
  def add_item(title, price, quantity = 0)
    if quantity > 0
      @total = @total + (price * quantity)
      quantity.times{@items.push(title)}
      @last_transaction = price * quantity
    else
      @total = @total + price
      @items << title
      @last_transaction = price
    end
  end
  
  def apply_discount
    if discount > 0
      @total = @total * ((100.0-discount)/100.0)
      return "After the discount, the total comes to $#{@total.round}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
end
