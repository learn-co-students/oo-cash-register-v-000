class CashRegister

  attr_accessor :total, :discount, :item_list, :last_item

  #///CashRegister ::new sets an instance variable @total on initialization to zero
  #CashRegister ::new optionally takes an employee discount on initialization

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @item_list = []
  end

  #CashRegister #add_item accepts a title and a price and increases the total
  #CashRegister #add_item also accepts an optional quantity
  #CashRegister #add_item doesn't forget about the previous total

  def add_item(item, price, quantity = 1)
    self.item_list.fill(item, self.item_list.length, quantity)
    @last_item = [item, price, quantity]
    self.total += (price * quantity)
  end

  #CashRegister #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
  #CashRegister #apply_discount the cash register was initialized with an employee discount returns successmessage with updated total
  #CashRegister #apply_discount the cash register was initialized with an employee discount reduces the total
  #CashRegister #apply_discount the cash register was not initialized with an employee discount returns astring error message that there is no discount to apply

  def apply_discount
      self.total -= (self.total * (self.discount.to_f / 100)).to_i
      if self.discount == 0
        return "There is no discount to apply."
      else
        return "After the discount, the total comes to $#{self.total.to_i}."
      end

  end

  #CashRegister #items returns an array containing all items that have been added

  def items
    self.item_list
  end

  #CashRegister #void_last_transaction subtracts the last transaction from the total

  def void_last_transaction
    self.item_list.pop()
    self.total -= (self.last_item[1] * self.last_item[2])
  end

end
