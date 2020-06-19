class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount= nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    @last_transaction = [title, price, quantity]
  end

  def apply_discount
    if @total == 0
      "There is no discount to apply."
      else
        "After the discount, the total comes to $#{@total = self.total * 8/10}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction[1] *  @last_transaction[2]
    @last_transaction[2].times do
      @items.delete_at(@items.index(@last_transaction[0]) || @items.count)
    end
  end
end
