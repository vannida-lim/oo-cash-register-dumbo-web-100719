
require 'pry'

class CashRegister
    attr_accessor :discount, :total, :title, :price, :quantity, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = [] 
    end


    def add_item(title, price, quantity = 1)
        self.total = @total += (price * quantity)
        quantity.times do 
            items << title
        end
        @last_item = price * quantity
    end



    def apply_discount
        if @discount != 0 
            @total = @total - (@discount * 10)
            return "After the discount, the total comes to $#{@total}." 
        else 
            return "There is no discount to apply."
        end 
    end 

    def items
        @items 
    end

    def void_last_transaction
        @total -= @last_item
    end 
end

