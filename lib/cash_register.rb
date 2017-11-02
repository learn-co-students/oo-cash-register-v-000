class CashRegister
  attr_accessor :total, :discount, :lists, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @lists = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @lists << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
     if @discount != 0
       @discount = self.total * @discount.to_f/100
       self.total = (@total - @discount).to_i
       "After the discount, the total comes to $#{self.total}."
     else
        "There is no discount to apply."
      end
    end

    def items
      @lists
    end

    def void_last_transaction
      self.total = self.total - self.last_transaction
    end
end
