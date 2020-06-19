class CashRegister

  attr_accessor :total, :discount, :items
  # :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @transactions = []
  end

  def add_item(item_name, price, quantity=1)
  #   self.total += price * quantity
  #   quantity.times do
  #     items << item_name
  #   end
  #   self.last_transaction = amount * quantity
  # end

    transaction_total = price * quantity
    quantity.times do
      @items << item_name
    end
    @total += transaction_total
    @transactions << transaction_total
  end

  def apply_discount
    # if discount != 0
    #   self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    #   "After the discount, the total comes to $#{self.total}."
    # else
    #   "There is no discount to apply."
    # end
    return "There is no discount to apply." unless @discount > 0
    discount_percent = @discount / 100.0
    @total = @total - (@total * discount_percent)
    return "After the discount, the total comes to $#{@total.to_i}."
  end

  def void_last_transaction
    # self.total = self.total - self.last_transaction
    last_transaction = @transactions.pop
    @total -= last_transaction
  end

end
