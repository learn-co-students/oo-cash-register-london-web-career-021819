class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @array_of_items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @array_of_items << title
    end
    @last_transaction = price * quantity
    @total += @last_transaction
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      total_float = @total - (@total * (@discount/100.0))
      @total = total_float.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @array_of_items
  end

  def void_last_transaction
    @total -=  @last_transaction
  end

end
