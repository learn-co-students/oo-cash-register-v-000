class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  #Sets total to 0, and creates an items array
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  #This records the last transaction
  #All it to the total
  #Adds current item to items, loops depending on quantity
  def add_item(title, price, quantity = 1)
    self.last_transaction = price * quantity
    self.total = total + price * quantity
    quantity.times do
      items << title
    end
  end
  
  #This checks to see if there is a discount
  #If one exists, it applies it and returns as an integer
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = (total - (total * (discount.to_f/100))).to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  #This pull the last_transcation and subtracts it from self.total
  def void_last_transaction
    self.total -= self.last_transaction
  end
end