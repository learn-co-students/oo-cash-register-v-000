class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction
#discount beginning at 0
  def initialize(discount=0)
    #total begin at 0
    @total = 0
    @discount = discount
    #creats an array to hold all the items
    @items = []
  end
#quantity beginning at 1
  def add_item(title, price, quantity=1)
     self.total += price * quantity
     #quantity amount of times it'll add the title to the items array
     quantity.times {items << title}
     self.last_transaction = price * quantity
   end


  def apply_discount()
    #if discount exists
    if discount > 0
      #subtracts value of total * discount / 100
      #to find new total
      self.total -= self.total * discount / 100
      #new total displayed
      "After the discount, the total comes to $#{@total}."
    else
      #otherwise, the following
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    #subtracts the last transaction
     self.total -= self.last_transaction
   end

end
