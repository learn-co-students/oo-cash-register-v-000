class CashRegister
  attr_accessor :total, :discount, :item_list, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_list = []
  end

  def self.total
    @total
  end

  def add_item(title, price, quantity = 1)
    if quantity == 1
      @total += price
      @item_list << title
    else
      item_total_price = price * quantity
      @total += item_total_price
      quantity.times do
        @item_list << title
      end
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      @total = @total - (@total*(@discount/100.00)).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    return @item_list
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
