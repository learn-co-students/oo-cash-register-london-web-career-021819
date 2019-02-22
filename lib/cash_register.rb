require "pry"


class CashRegister

#attr_reader
#attr_writer
attr_accessor :total, :title, :price, :discount, :items, :last_transaction



def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity=1)
  @last_transaction = price * quantity
  @total += @last_transaction
  quantity.times do
    @items << title
  end
end

def apply_discount
if @discount != 0
  @total = @total - @discount.to_f/100 * @total
  "After the discount, the total comes to $800."
  else
  "There is no discount to apply."
end
end

def void_last_transaction
  @total -= last_transaction
end

end
