class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount.to_f
  end

  def add_item(title, price, quantity = 1)
    self.total = total+(price*quantity)
    quantity.times do self.items << title
    end
    self.last_transaction = price*quantity
  end

  def apply_discount
    @total = total-(total*@discount.to_i/100.to_f)
    if @total > 0
      return "After the discount, the total comes to $#{@total.round}."
    else
      return "There is no discount to apply."
  end
end

    def void_last_transaction
    @total = total-self.last_transaction
    end

   end
