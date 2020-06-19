class CashRegister
  attr_accessor :total
  attr_reader :discount
  @item_array = []
  @price_array = []
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = nil)
    if quantity != nil
      @item_array.nil? ? @item_array = [title] * quantity : @item_array += [title] * quantity
      transaction_price = price * quantity.to_f
      @total += transaction_price
      @price_array.nil? ? @price_array = [transaction_price] : @price_array << [transaction_price]
    else
      @item_array.nil? ? @item_array = [title] : @item_array << [title]
      @total += price
      @price_array.nil? ? @price_array = [price] : @price_array << [price]
    end
  end
  
  def apply_discount
    if @discount != nil
      @total -= (@discount * 10)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @item_array
  end
  
  def void_last_transaction
    @total -= @price_array[-1]
  end
end
  
  