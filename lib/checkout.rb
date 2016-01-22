require 'products'
require 'promotional_rules'

class Checkout

  attr_reader :basket, :promotional_rules

  def initialize(promotional_rules = PromotionalRules.new, products = Products.new)
    @basket = []
    @promotional_rules = promotional_rules
    @products = products
  end


  def items_available
    @products.items
  end

  def scan(item)
    item_scanned = items_available.fetch(item);
    @basket.push(item_scanned);
  end
end
