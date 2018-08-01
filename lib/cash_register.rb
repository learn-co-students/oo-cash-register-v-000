require 'pry'

class CashRegister

    attr_accessor  :total, :discount, :quantity, :items, :price, :last_transaction

  # sets @total on initialization to zero
  def initialize(discount = 0, quantity = 1)
    @total = 0
    @discount = discount
    @items = []
  end

  # add item and shovel it into @@all_items
  def add_item(item_name, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
    @items << item_name
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount != 0
      #do something here and convert to float .to_f
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{self.total}."
    else
       "There is no discount to apply."
     end

  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end

# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction with array?
