class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = {})
    @total = 0
    @@all = []
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    self.last_transaction = price * quantity
    @item = item
    quantity.times do
      @@all << @item
    end

    subtotal = price * quantity
    @total += subtotal

  end

  def apply_discount()
    if discount != {}
      @total = (@total * (1-(discount * 0.01))).round
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end

  def items

    @@all

  end

  def void_last_transaction
    @total -= self.last_transaction
  end

end
