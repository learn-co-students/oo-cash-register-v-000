class CashRegister
attr_accessor :discount, :total, :quantity

@@item = []
@@transaction_log = []

  def initialize(discount = 0)
    @total = 0
    @last_amount = 0
    @discount = discount
    @@item.clear
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    @@transaction_log << (price * quantity)
    @quantity = quantity
    quantity.times {
      @@item << title
    }
  end

  def apply_discount
    if @discount > 0
      @total = ((total * (100 - @discount) * 0.01))
      "After the discount, the total comes to $#{total.round()}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@item
  end

  def void_last_transaction
    @total = (@total - @@transaction_log[-1])
  end

end
