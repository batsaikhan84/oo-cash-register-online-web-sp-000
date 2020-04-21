class CashRegister
  attr_accessor :total, :discount, :items, :previous_total
  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
    @previous_total = 0
  end
  
  def self.total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @previous_total = @total
    counter = 1
    while counter <= quantity
      @items << title
      counter += 1
    end
  end
  
  def apply_discount
    if @discount == 20
      @total = @total - @total*@discount/100
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @previous_total
    @items.pop()
    if @items = []
      @total = 0.0
    end
  end
end
