require 'pry'
#https://github.com/deniznida/oo-cash-register-ruby-007-public/edit/master/lib/cash_register.rb
class CashRegister
  attr_accessor :total, :discount
  #read&write method of variable total, discount
  def initialize(discount = 0)
    #set discount = 0 passes
    #optionally takes an employee discount
    #on initialization
    @total = 0
    #sets total to 0
    @discount = 20
    #sets the discount to 20
    #binding.pry
    @cart = []
    #creates a local variable array, cart
    #for adding item info
  end
  #add items of varying quantities and prices
  #use instance methods to track info pertinent
  #to an instance of a class
  def add_item(item, price, quantity=1)
    #3 arguments accepts title, price,
    #and qty(for later calc)
    #note by setting value of 1 for qty,
    #it creates optional quantity
    #to change register total amount, calc is in line
    #23
    item_info ={}
    #creates an empty hash, item_info
    item_info[:name] = item
    # creates hash key :name for item
    item_info[:price] = price
    #creates hash key :price for price of item
    item_info[:quantity] = quantity
    #creates hash key :quantity for quantity of item
    @cart << item_info
    #shovels item_info into l
    #ocal variable instance @cart
    #binding.pry
    @total += price * quantity
    #new total = current total + (price*quantity)
    #keeps a running total? yes, when?
    #when there are more than 1 hash
    #binding.pry
  end
  #calculate discounts
  def apply_discount
    #binding.pry
    if @discount == 0
      #binding.pry
      return "There is no discount to apply."
    end
    #binding.pry#a current total exist here
    @total -= @total * @discount/100
    #new total=current total-(local discount/100)
    #binding.pry
    #a new total exist here
    return "After the discount, the total comes to $#{@total}."
  end
#keeps tracks of what has been added to it
  def items
    #sets an empty array, item_names
    item_names = []
    #to return an array containing all items
    #that have been added
    @cart.each do |item_info|#iterates
      #@cart array
      #block instruction
      for qty in 1..item_info[:quantity]
        #for quanity in range 1 to hash,
        #item_info[:quantity]
        #where did the qty come from?
        item_names << item_info[:name]
        #shovel hash values from :name
        #into item_names array
      end
    end
    item_names#implicit return array item_names
  end
end
