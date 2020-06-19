class CashRegister

  attr_accessor :total, :discount, :title, :price, :transaction, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @transaction = price * quantity
    @total = total + transaction
    quantity.times {|x| @items << title}
  end

  def apply_discount
    if discount != 0
      @total = total - (discount * 10)
      "After the discount, the total comes to $#{total}."
      else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = total - transaction
  end

end
