class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total = @total + price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction = [title, price, quantity]
  end

  def apply_discount
    if discount != 0
    self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

    def items
      @items
    end

    def void_last_transaction
      @total = @total - (@last_transaction[1] * @last_transaction[2])
    end

end
