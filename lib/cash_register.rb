class CashRegister

    attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
    @last_transaction = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
    @item_array << title
  end
  end


  def apply_discount   
      if discount > 0
        self.total -= @total* @discount/100
        "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
    end
  end

  def items
    @item_array
  end

  def void_last_transaction
    @total -= @total
  end

end


