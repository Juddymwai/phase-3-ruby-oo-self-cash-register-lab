class CashRegister

    attr_accessor :total, :items, :discount, :last_transaction
    def initialize (discount = 0)
        @total =0
        @items = []
        @discount = discount
        @last_transaction
    end



    # def total
    # end
    def add_item (title, price, quantity =1)
        
        self.last_transaction = price * quantity
        self.total += self.last_transaction
        self.items << title
    end
    def apply_discount

        if self.discount != 0
            discount_as_percent = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * discount_as_percent).to_i
                "After the discount, the total comes to $#{self.total}."
            else

                "There is no discount to apply."
            end
    end
    # def items
        
    # end
    def void_last_transaction
        self.total -= self.last_transaction
    end
end
items= CashRegister.new (['pants', "sweaters", "jacket"])
shirt= CashRegister.new(10)
puts shirt.apply_discount


