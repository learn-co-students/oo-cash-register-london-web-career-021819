class CashRegister

  attr_reader :discount

  def initialize(discount = nil)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end

  def items=(arg_array)
    arg_array[1].times do
      @items << arg_array[0]
    end
  end

  def items
    @items
  end

  def add_item(item_name, price, quantity = 1)
    @final_price = price * quantity
    self.total = @total + @final_price
    self.items= [item_name, quantity]
  end

  def apply_discount
    return "There is no discount to apply." if !discount
    self.total = @total - ( (@total * discount) / 100)
    "After the discount, the total comes to $#{self.total.to_i}."
  end

  def void_last_transaction
    self.total = @total - @final_price
    @items.pop #Also removes last item from array
  end
end
