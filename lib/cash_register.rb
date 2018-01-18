class CashRegister
   attr_accessor :total, :discount

   def initialize(total=0, discount=0)
      @total = total   
      @discount = discount
   end
   
end
