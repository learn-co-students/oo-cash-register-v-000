class CashRegister
  attr_accessor :discount, :total, :items, :last_p
  def initialize(d=0) @discount=d; @total=0; @items=[] end
  def add_item(i,p,q=1)
    @last_p=p*q; @total+=@last_p
    q.times do
      @items<<i
    end
  end
  def void_last_transaction
    @total-=@last_p;
    @last_p=0
  end
  def apply_discount
    @discount==0 ? "There is no discount to apply." :
    "After the discount, the total comes to $#{(@total*=(1-@discount/100.0)).to_int}."
  end
end
