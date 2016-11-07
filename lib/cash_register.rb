
class CashRegister
  # So, yes, this class is a little more complicated than necessary. But I think
  # it is a better model for an _actual_ cash register than the way I think it's
  # meant to be solved. This way, you have:
  #  - a receipt built up with an entire transactional history, which is useful
  #    for modifying the contents or searching it for applicable coupons or
  #    checking for whatever else
  #  - a non-hardcoded total, so the total will give the actual sum of the items
  #    in your receipt, not a weakly counted total. It's also able to take a
  #    "manager's override" to set it to a specific value while documenting the
  #    action on the receipt and also not affecting the transaction history
  #  - applying the employee discount cannot be abused by repeatedly applying
  #    the same discount; instead, it flips a boolean "switch" on whether or not
  #    the discount is applied to the total (it also dynamically applies to the
  #    total even if you keep adding items)
  #  - voiding the last item _actually_ voids the last item, and you can keep
  #    doing so to repeatedly remove them from the receipt (and, therefore, the
  #    total)
  # If I'm not mistaken, none of this functionality would be available with the
  # other way of doing it (which I started in the commented-out code below the
  # definition of this class). So, yay!

  attr_accessor :discount, :receipt, :discount_applied

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @receipt = []
    @discount_applied = false
  end

  def total=(number)
    # Overrides the canonical total by prepending a line item for the difference
    # between the real total and the intended total. This way it preserves the
    # receipt and the purchase timeline.
    receipt.unshift(["OVERRIDE_TOTAL", number - self.total, 1])
  end

  def total
    @total = self.receipt.inject(0) {|memo, entry| memo + (entry[1] * entry[2])}
    self.discount_applied ? self.discounted_total : @total
  end

  def discounted_total
    @total * ((100.0 - self.discount.to_f) / 100.0)
  end

  def items
    self.receipt.inject([]) do |memo, entry|
      unless entry[0] == "OVERRIDE_TOTAL"
        entry[2].times { memo << entry.first }
      end
      memo
    end
  end

  def add_item(item, price, quantity=1)
    self.receipt << [item, price, quantity]
  end

  def apply_discount
    unless self.discount == 0
      self.discount_applied = true
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.receipt.pop
  end
end



# class CashRegister
#
#   attr_accessor :total, :discount, :receipt
#
#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @receipt = []
#   end
#
#   def items
#     self.receipt.map do |entry|
#       entry.first
#     end
#   end
#
#   def add_item(item, price, quantity=1)
#     self.total += price * quantity
#     self.receipt << [item, price, quantity]
#   end
#
#   def apply_discount
#     unless self.discount == 0
#       self.total *= ((100.0 - self.discount.to_f)/100.0)
#       self.total = self.total.to_i
#       "After the discount, the total comes to $#{self.total}."
#     else
#       "There is no discount to apply."
#     end
#   end
#
#   def void_last_transaction
#     # self.receipt[-1]
#   end
# end
