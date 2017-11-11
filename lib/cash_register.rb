class CashRegister


  attr_accessor :total, :items, :discount



  #CashRegister ::new sets an instance variable @total on initialization to zero
  #CashRegister ::new optionally takes an employee discount on initialization
    def initialize(input=0)
      @total = 0
      @items = []
      @discount = input
    end

  #total returns the current total
    def total
      @total
    end

  #add_item accepts a title and a price and increases the total
  #add_item also accepts an optional quantity
  #add_item doesn't forget about the previous total

    def add_item(name, price, qty=1) #accepts a title and a price and increases the total, also accepts an optional quantity, doesn't forget about the previous total
      @total = @total + price * qty
      qty.times do
        @items << "#{name}"
      end
    end

  #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
  #apply_discount the cash register was initialized with an employee discount returns success message with updated total
  #apply_discount the cash register was initialized with an employee discount reduces the total
  #apply_discount the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply

    def apply_discount
      if @discount == 0
        "There is no discount to apply."
      else
        @total = @total - @total * 0.01 * @discount
        temp = @total
        "After the discount, the total comes to $#{@total.to_i}."
      end
    end

  #items returns an array containing all items that have been added
    def items
      @items
    end
    #void_last_transaction subtracts the last transaction from the total
      def void_last_transaction
        @total = 0
        @items = []


      end




end
