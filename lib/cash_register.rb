class CashRegister

  attr_accessor :total, :title, :quantity, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @item_list = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price*quantity
    quantity.times do 
      @item_list << title 
    end
    self.last_transaction = price*quantity
  end

  def apply_discount
    if discount != 0
      @total = (@total/100)*(100-discount)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @total -= self.last_transaction
  end

end