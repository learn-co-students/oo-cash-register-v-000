class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @purchases = []
  end

#   def add_item(item, price, quantity=1)
#     @purchases[@purchases.keys.length] = {price: price, item: [], quantity: quantity}
#     quantity.times { @purchases[@purchases.keys.length-1][:item] << item }
#     @total += (price*quantity)
#     @total
#   end
  def add_item(item, price, quantity=1)
    purchase = {price: price, item: [], quantity: quantity}
    quantity.times { purchase[:item] << item }
    @purchases.push(purchase)
    @total += (price*quantity)
    @total
  end


  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    end
    @total = (@total * ((100.to_f-@discount.to_f)/100.to_f)).to_i
    return "After the discount, the total comes to $#{@total}."
  end

  def items
    @purchases.collect {|purchase| purchase[:item]}.flatten
  end

  def void_last_transaction
    last_purchase = @purchases.pop
    @total -= (last_purchase[:price] * last_purchase[:quantity])
  end

end
