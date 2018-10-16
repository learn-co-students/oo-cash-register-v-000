class CashRegister

  attr_accessor :total, :items, :discount, :transactions

  def initialize(discount = nil) #why do we not have to pass total through here as an argument if it is being initialized?
    @total = 0
    @discount = discount
    @transactions = []
    @items = []
  end


  def add_item(item, price, quantity = 1) #accepts a title and a price and also accepts and optional quantity
    #increases the total
    #doesnt forget about the previous total
    #price x quantity =  total
    #add item price to the old total
    transaction = price * quantity
    @transactions << transaction
    @total += transaction
    quantity.times do
      self.items << item
    end
  end

  def apply_discount
    if @discount != nil #if the cash register was initialized with a discount then:
      @total = @total - (@total * @discount / 100) #sets the total instance variable equal to the instance total - the discounted total
      "After the discount, the total comes to $#{total.to_i}." #returns success message with the updated total
    else #if the cash register was not initialized with a discount:
      "There is no discount to apply." #returns a string error message that there is no discount to apply
    end
  end

  def void_last_transaction
       @total = @total - @transactions[-1]
  end



end #ends class
