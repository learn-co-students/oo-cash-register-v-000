class CashRegister
    attr_accessor :total, :trans

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item_hash = {}            #reinitializes item_hash for each instance of new cash_register object
        @trans = 0                 #initialized to 0 for each instance so it can be used to keep track of last transaction
    end

    def discount
        @discount
    end

    def add_item(item, price, qty = 1)
        @item_hash[item] = qty         #keeps track of item/qty pairs to be used by items method
        self.items                     #calls item method
        self.total += (price * qty)
        @trans = (price * qty)         #keeps track of last transaction
        self.total
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total *= ((100 - self.discount) * 0.01)        #formula to factor in employee discount to total
            "After the discount, the total comes to $#{self.total.to_i}." #makes float into an integer to knock of decimal in output
        end
    end

    def items
        @item_array = []
        @item_hash.each do |key, value|  #takes item_hash from add_item and iterates each key/value
            value.times do               #takes value from item_hash to determine the # times to push item into item_array
                @item_array.push(key)    #adds the key to item_array for every number of qty times an item is chosen (ie 3 apples)
            end
        end
        @item_array
    end

    def void_last_transaction
        self.total -= @trans
        self.total
    end

end
