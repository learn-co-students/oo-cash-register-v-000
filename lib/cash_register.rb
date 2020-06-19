class CashRegister
  attr_accessor :total

  def initialize(discount = (discount_not_applied = true))
    @total = 0
    @previous_total = 0
    @discount = discount
    if discount_not_applied
      @discount_not_applied = true
    else
      @discount_not_applied = false
    end
    @items_hash = {}
    @items_array = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @items_hash[item] = [price]
    item_quantity = quantity
    while item_quantity > 0
      @items_array << item
      item_quantity -= 1
    end
    @total += price * quantity
    @previous_total = @total - price * quantity
    @total
  end

  def apply_discount
    if @discount_not_applied == true
      "There is no discount to apply."
    else
      discount_percentage = self.discount.to_f / 100
      applied_discount = @total * discount_percentage
      @total -= applied_discount
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items_array
  end

  def void_last_transaction
    @total = @previous_total
    @total
  end
end
