class CashRegister
#------------------------------------------------------------------------
#------------------------------------------------------------------------
#macros, variable declaration, init

attr_accessor :total, :discount


def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = {}
end


#------------------------------------------------------------------------
#------------------------------------------------------------------------
#constructors




#------------------------------------------------------------------------
#------------------------------------------------------------------------
#other methods

def add_item (name,price,quantity=1)
    @items["#{Time.now.to_f}"] = { 
                                    name: name,
                                    price: price,
                                    quantity: quantity,
                                    voided: false
                                    }
    @total += price * quantity
    # puts @total
    

end


def apply_discount
    if @discount > 0
    @total = @total * (1.0 - (discount / 100.0))
    response =  "After the discount, the total comes to $#{@total.to_i}."
    else
    response =  "There is no discount to apply."
    end
response
end

def items
items_array = []

@items.each {|key,item_hash|
            item_hash[:quantity].times {items_array << item_hash[:name]}
            }
items_array
end

def void_last_transaction
#this just sorts by keys (timestamps) and finds the most recent
#aka the "last" transaction
last_transaction_key = @items.keys.sort{|x,y| y <=> x}.first 
#i just mark that it's voided for future reference
@items[last_transaction_key][:voided] = true

#now i take it off the total
@total = @total - (@items[last_transaction_key][:quantity]*@items[last_transaction_key][:price])
@total = @total.round(2) #and round back to 2 digits



end



end

