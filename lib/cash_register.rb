
class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_tx = []
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity)
    quantity.times do
      @items << title
    end
    @last_tx = [title, price, quantity]
  end

  def apply_discount
    disc_amt = @total * @discount/100
    @total = total - disc_amt
		if discount > 0
			"After the discount, the total comes to $#{@total}."
		else
			"There is no discount to apply."
		end
  end

  def items
    @items
  end

  def void_last_transaction
		@total = total - @last_tx[1]
  end
end