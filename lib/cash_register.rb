class CashRegister
    attr_accessor :total, :discount, :history, :last

    def initialize(discount = 0)
        @total = 0.0
        @discount = discount #given as a percent
        @history = []
        @last = 0.0
    end

    def add_item(title, price, num= 1)
        @last = total
        @total += price*num
        @history<<[title, price, num]
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total = @total * (1.0-@discount/100.0) #floaters issue
            "After the discount, the total comes to $#{@total.round}."
        end
    end

    def items
        x=@history.collect do |item|
            blank=[]
            item[2].times do
                blank<<item[0]
            end
            blank
        end
        x.flatten
    end

    def void_last_transaction
        @total=@last
    end

end
