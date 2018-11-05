class CashRegister
  attr_accessor :total, :discount, :items, :delete_history



  def initialize(disc = 0)
    @total = 0
    @discount = disc
    @items = []
  end

  def total
    @total
  end

  def add_item(title, cost, quantity=1)
    @total += cost*quantity
    quantity.times { @items << title }
    @delete_history = [title, cost, quantity]
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      disc_apply = (100.0-@discount.to_f) / 100
      @total = @total*disc_apply
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - (@delete_history[1]*@delete_history[2])
    @items.delete(@delete_history[0])
  end

end
