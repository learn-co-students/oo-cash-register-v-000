class CashRegister
  attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items, @transactions = [], []
  end

  def add_item(item = nil, price = 0.0, quantity = 1)
    @total += price * quantity
    quantity.times{
      @items << item
      @transactions << price
      }
  end

  def apply_discount
    return "There is no discount to apply." if @total == 0
    @total -= @total * @discount/100
    "After the discount, the total comes to $#{total}."
  end

  def void_last_transaction
    @total -= @transactions.last
    @items.pop
    @transactions.pop
  end

  def get_receipt
    puts "Your receipt:\n\n\tItems\t\tPrice\n"
    i = 0
    while i < @items.length
      puts "\t#{@items[i]}\t\t#{@transactions[i]}"
      i += 1
    end
    puts "\nYour total is:\t$#{@total}\n\nThank you for shopping with us today."
    @total, @discount, @items, @transactions = 0, 0, [], []
  end
end
