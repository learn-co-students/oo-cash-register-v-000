class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, px, qty=1)
    @total += px * qty # solution uses self.total instead. Is there a difference?
    qty.times do
      items << title
    end
    @last_transaction = px * qty
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = (@total * (100 - discount.to_f)/100).to_i # Also here, solution uses self.total and just total instead of @total in theh formula      
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end

