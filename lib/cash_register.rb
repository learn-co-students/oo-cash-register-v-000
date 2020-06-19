class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0.0)
    @total = 0.0;
    @discount = discount;
    @items = [];
    @last_transaction = [];
  end

  def add_item(item, price, quantity = 1)
    quantity > 1 ? quantity.times{@items << item} : @items << item;
    @total += price * quantity;
    @last_transaction = [item, price, quantity];
  end

  def apply_discount
    if @discount == 0.0
      "There is no discount to apply."
    else
      discount_total = @total * @discount / 100.0;
      @total -= discount_total;
      "After the discount, the total comes to $#{@total.to_i}.";
    end
  end

  def void_last_transaction
    last_transaction[2] > 1 ? last_transaction[2].times{@items.pop} : @items.pop;
    @total -= last_transaction[1] * last_transaction[2];
    last_transaction = [];
  end
end
