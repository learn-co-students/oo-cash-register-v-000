class CashRegister
  @@pricelist= {}
attr_accessor :total, :discount
 def initialize(d=nil)
    @total = 0
    @discount = d
    @allpro = []
 end

def add_item(prod, price, q=1)
  @product = prod

  @quantities = q
  @total += price *  q
   for i in 1..q do
     @allpro << prod
   end

   if @@pricelist == {}
     @@pricelist = { prod => price }
   else
     @@pricelist[prod] = price
   end

end
def apply_discount
  if self.discount != nil
    self.total = self.total*( 1- self.discount/100.to_f)
     return "After the discount, the total comes to $#{self.total.to_i}."
  else
    return "There is no discount to apply."
  end
end
def items
    @allpro
end

def void_last_transaction
     n = @allpro.length
    @total = @total -  @@pricelist[@allpro[n-1]]
end

end
