
class CashRegister

  attr_accessor :total, :discount, :items, :last_txn

  def initialize(employee_discount = 0)
    @total=0
    @discount=employee_discount
    @items=[]
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @last_txn= price*quantity
    @total +=  @last_txn
    quantity.times do
      @items<<title
    end
  end

  def apply_discount
    temp= @total*@discount/100
    @total -= temp
    @discount>0 ? "After the discount, the total comes to $#{total}." : "There is no discount to apply."
  end

  def items
    @items.to_a
  end

  def void_last_transaction
    @total -= @last_txn
  end
 end
