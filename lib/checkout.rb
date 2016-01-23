require 'products'
require 'promotional_rules'

class Checkout

  attr_reader :basket, :promotional_rules, :total

  def initialize(promotional_rules = PromotionalRules.new, products = Products.new)
    @basket = []
    @promotional_rules = promotional_rules
    @products = products
    @total = 0
  end

  def items_available
    @products.items
  end

  def scan(item_number)
    add_to_basket(item_number)
  end

  private
  def add_to_basket(item)
    item_scanned = items_available.fetch(item)
    add_to_total(item_scanned[1])
    @basket.push(item_scanned)
  end

  def add_to_total(price)
    @total+= price
  end

end
