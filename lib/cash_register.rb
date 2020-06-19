class CashRegister
  attr_accessor :total, :discount, :all_items, :total_amount

  def initialize(discount= 0)
    @total = 0
    @discount = discount
    # @all_items = {}
    @all_items = []
    @total_amount = []
  end

  def add_item(title, price, quantity= 1)
    self.total += price * quantity
    # @all_items["#{title} " * quantity] = self.total
    @all_items << "#{title} " * quantity
    @total_amount << price * quantity
  end

  def apply_discount
    if self.discount > 0
      self.total = self.total - (self.total * (self.discount / 100.0))
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    items_array = []
    self.all_items.each do |item|
      item.split(" ").each do |item|
        items_array << item
      end
    end
    items_array
  end

  def void_last_transaction
    last_item = self.total_amount.pop
    self.total -= last_item
  end

end
