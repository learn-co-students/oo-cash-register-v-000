
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    @total += amount * quantity
    quantity.times do
    @items << title
  end
    @last_transaction = amount * quantity

  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount = @total * @discount /100
      @total = @total - discount
      "After the discount, the total comes to $#{@total}."
      end
    end

    def void_last_transaction
      @total = @total - @last_transaction
    end







end

