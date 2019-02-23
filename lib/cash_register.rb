require 'pry'

class CashRegister

  attr_accessor :price, :items, :total, :discount, :quantity, :totals, :last_transaction

  @@totals = []


  def initialize(discount=0)
    @items = []   # The reason we don't need a double @@items here is because
                  # we're only needing to track the items that are going in for this
                  # particular user, therefore instance variable is used rather than
                  # class variable where all items could be stored by the class.
    @total = 0
    @price = price
    @discount = discount
    @last_transaction = 0
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
    end

    if quantity > 1
      @total += price * quantity
    else
      @total += price
    end
      @@totals << price

      @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 1
      discounted_amount = @total * @discount / 100
      @total -= discounted_amount
        "After the discount, the total comes to $#{total}."
      else
        "There is no discount to apply."
      end
  end

    def void_last_transaction
      @total = @total - @last_transaction
    end

end
