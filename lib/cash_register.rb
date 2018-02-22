# From Learn.co-OO Cash Register:
#  Build a cash register (class) that can:
#   add items
#   calculate discounts
#     * need total (sum of cost of items in cart) * associate cost and item via hash
#   keep track of what's been added to it
#     * cart  = a hash
#   void the last transaction

#  - call an instance method inside another instance method via self.<instance_method>
#  - "Use instance methods to track information pertinent to an instance" 
#       - define a writer/setter method to store info in an instance variable
#  - Re: #apply_discount
#     "Note that 100.class returns Integer while 100.0.class returns Float."
#  - Re: #void_last_transaction
#     make new instance variable and methods to access it (attr_accessor)
# 
#  Along the way:
#   Scope Operator ::
#      - the thing on the right of :: is defined within the context, or namespace, of the thing on the left
#   Message Operator (.) v. Scope Operator (::)
#        . - used to call a method
#       :: - used to reference a constant 
#          - Use :: only to reference constants (this includes classes and modules) and constructors (like Array() or Nokogiri::HTML()).
#          - Do not use :: for regular method invocation.
#   .times
#     - <integer>.times do 
#          code
#        end
#      OR
#        <integer>.times {code}     

class CashRegister
  
  attr_accessor :total, :discount, :previous_total, :items
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @previous_total = 0
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    # accepts title(string) and price(float)
    # increases the total
    # accepts an optional quantity
    # retains previous total 
    quantity.times {@items<<title}
    @previous_total = @total
    quantity.times {@total = self.total + price}
  end
  
  def apply_discount
    # if initialized with a discount
    #  - applies the discount to the total price
    #  - returns "After the discount, the total comes to $#{@total}."
    # if no discount
    #  - returns "There is no discount to apply."
    if @discount == 0
      "There is no discount to apply."
    else
      @total = self.total - self.total*".#{@discount}".to_f
      "After the discount, the total comes to $#{@total.to_i}."
    end

  end

  def void_last_transaction
    @total = @previous_total
  end

end