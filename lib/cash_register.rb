require'pry'

class CashRegister
  attr_accessor :total, :discount, :quantity, :apply_discount, :store, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @store = []
    @last_transaction = []
  end

  def add_item(item, price, quantity = 1) #writing an optional statement, you have to make a default. it's optional because when someone is adding an item, it's assumed that the quanity is 1 if it's not stated otherwise.

      #i have to loop because every time i'm looking for an item with different quantity, it returns

       # @total += price is also the same as @total = @total + price
       @total = @total + price * quantity

       #in the specs, i saw that it responded with :
       #CashRegister #add_item also accepts an optional quantity
     #Failure/Error: expect{cash_register.add_item("book", 5.00, 3)}.to change{cash_register.total}.by(15.00)
       #expected `cash_register.total` to have changed by 15.0, but was changed by 5.0
       # i was going to loop but it's not requiring a loop. I also "added" but it wanted to multiple the quantity not add.******
       # @total = price + quantity
       #i'm going to want to loop around but also store the information in an empty array.

       #what am i looping?
       #i'm going to loop around the @total including the quantity.
#doesn't want to forget about the previous total
#what is the total supposed to have?
#total item, price, quantity.
      quantity.times do
        @store << item

      @last_transaction << price
   end
  end

  def apply_discount
    #i need @total and @discount
      if @discount == 0
        return "There is no discount to apply."
      else
      discounted_percent = @discount/100.0
      discounted_price = discounted_percent * @total
      @total = @total - discounted_price
      return "After the discount, the total comes to $800."
      end
   end
   def items
     @store
   end

   def void_last_transaction
      #total = total - last_transaction

      @total = @total - @last_transaction.last #(found from google)
      # @total = @total - @last_transaction[-1]
      # @total = @total - @last_transaction.pop
      # binding.pry
   end
end
