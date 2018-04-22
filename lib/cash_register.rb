class CashRegister
  attr_accessor :total, :discount, :item, :price, :quantity, :transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @items = []
    @transactions = []
  end


  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:item] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info
    @total += price * quantity
    @transactions << price
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total -= @total * @discount / 100
     "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    item_names = []
    @cart.each do |item_info|
      for qty in 1..item_info[:quantity]
        item_names << item_info[:item]
      end
    end
    item_names
  end

  def void_last_transaction
    self.total = @total - @transactions.pop
  end
end
