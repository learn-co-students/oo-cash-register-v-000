class CashRegister

attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
end

  def add_item(item, price, quantity = 1)
    item_info = {}
    item_info[:name] = item
    item_info[:price] = price
    item_info[:quantity] = quantity

    @cart << item_info
    @total += price * quantity
    @last_transaction = @total
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."

end

    def items
      item_names = []
      @cart.each do |grocery|
      for qty in 1..grocery[:quantity]
      item_names << grocery[:name]
    end
    end
    item_names
  end
    def void_last_transaction
      @total -= @last_transaction
    end
end
