require 'pry'

class CashRegister

  attr_accessor :total, :last_transaction


  def initialize(employee_discount = 0)
    #initialize the object with the total at 0 and the employee discount if it's added.
    @total = 0
    @employee_discount = employee_discount
    @items = []
    @last_transaction = 0
  end

  def discount
    #shows the employee discount
    @employee_discount
  end

  def add_item(item, price, amount = 1)
    #Add the price of the item to the total amount and doesn't forget the previous amount
    amount_times_price = price * amount
    self.total += amount_times_price
    @items << Array.new(amount, item)
    @last_transaction = price
  end

  def apply_discount
    #We change the discount amount to a floater and divide it by 100 to get the percentage and save that to the variable
    #discount.
    #The method makes self.total a floater and multiplies it by the discount amount and saves it to the amount_off_the_total
    #variable.
    #THe method subtracts the amount off the total (from the discount), turns it back into an integer, and alters the
    #objects total.
    discount = self.discount.to_f / 100
    amount_off_the_total = self.total.to_f * discount
    self.total -= amount_off_the_total.to_i
    self.total > 0 ? "After the discount, the total comes to $#{self.total}." : "There is no discount to apply."
  end

  def items
    #Returns an array containing all items that have been added
    #We add items to the class variable @items in line 24.
    #The method adds new arrays to the @items array
    #we flatten the array here and return the variable containing the new array.
    new_items_array = @items.flatten
    new_items_array
  end

  def void_last_transaction
    #subtract the stored last_transaction, from line 13 that's created from line 26, from the total
    self.total -= self.last_transaction
  end
end
