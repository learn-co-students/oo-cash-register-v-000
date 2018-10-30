class CashRegister
  attr_accessor :total, :items

  def initialize(emp_disc = 20.00)   #should just be given in decimal form
    @last_item = 0
    @total = 0
    @item_list = []
    @emp_disc = emp_disc            #or let me do / 100.00 on initialization
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    item_total = (price * quantity).round(2)
    @total += item_total
    @last_item = item_total
    quantity.times do
      @item_list << item
    end
  end

  def items
    @item_list
  end

  def apply_discount
    @total -= (@total * (@emp_disc.to_f / 100.00))
    @total == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{@total.floor}."
  end

  def discount
    @emp_disc
  end

  def void_last_transaction
    @total -= @last_item
    #also would need to remove item/quantity from list but no tests
  end

end
