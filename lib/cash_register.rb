require "pry"
class CashRegister

  #returns the current total
  attr_accessor :total, :items, :last_transaction

  #define the discount instance
  attr_reader :discount

  def initialize (discount=1)
    @total = 0
    @discount =discount
    @items =[]
  end

  def add_item(title, price, quantity=1)
    if quantity > 0  #if quantity is added then execute to following code
      @total += (price.to_f * quantity)
    else
      @total +=price.to_f #else execute this
    end
#items method
    each_title = title.split(',') * quantity #draw reference from the
    @items << each_title
    @items.flatten! #use exclamtaion mark to save the variable
#void_last_transaction method
    @last_transaction = price * quantity
  end

  def apply_discount
    if self.total == 0
      "There is no discount to apply."
    else
      quotient = @discount.to_f / 100.to_f #.to_f is to avoid a nil when the discount or quotient returns with a decimal place
      total_discount = self.total * quotient
      self.total = self.total - total_discount
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def void_last_transaction
      self.total =  self.total - self.last_transaction #new total = total -last transaction
  end

end
