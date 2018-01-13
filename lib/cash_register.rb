require 'pry'

class CashRegister                # describe 'CashRegister

  attr_accessor :discount, :total, :cash_register, :cash_register_with_discount, :items, :last_transaction

    def initialize(discount=0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(title, price, quantity=1)
      @total += quantity * price
      quantity.times do
        items << title

      end
      @last_transaction = @total
    end

    def apply_discount
      if discount == 0
        return "There is no discount to apply."
      elsif self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
        return "After the discount, the total comes to $" "#{self.total}""."
      end
    end


    def void_last_transaction
      @total -= last_transaction
    end

  end
