class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = {}
  end

  def add_item(item, price, quantity=1)
    cost_to_add = price * quantity
    self.total += cost_to_add
    all_items = Array.new(quantity, item)
    self.last_transaction[:item_name] = all_items
    self.last_transaction[:price] = cost_to_add
    self.items << all_items
    self.items.flatten!
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      discount_rate = self.discount / 100.to_f
      discount_amount = self.total * discount_rate
      self.total -= discount_amount
      "After the discount, the total comes to $#{self.total.round}."
    end
  end

  def void_last_transaction
    self.items.pop(self.last_transaction[:item_name].length)
    self.total -= self.last_transaction[:price]
  end

end
