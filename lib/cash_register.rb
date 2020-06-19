
class CashRegister
attr_accessor  :total, :qty, :items


 #########################################
def initialize(dscnt=0)
  @total = 0
  @dscnt=dscnt #discount
  @trnz=0     #transaction
  @items =[]
  @qty=qty
end

#########################################
def   add_item(n,val,qty=1)

  self.total +=(@trnz=(val*qty))
     qty.times {@items << n}
end
#########################################
def discount()  @dscnt end
#########################################
def apply_discount
  v=@dscnt

  d=(@total-=@total/100*v)
  v == 0 ? ("There is no discount to apply.") : ("After the discount, the total comes to $#{d}.")
end
#########################################
def  void_last_transaction() @total -= @trnz  end
#########################################
end
