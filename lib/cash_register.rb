class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
  end
  
  def self.total
    @total
  end
  
  def add_item(title, price, quantity=1)
    @items << title
    @total += price*quantity
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
  
end
