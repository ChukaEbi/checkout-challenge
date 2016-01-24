class PromotionalRules

  SPENDING_PROMOTION_PERCENTAGE = 0.1
  DISCOUNTED_PRICE = 8.50
  DISCOUNT_ITEM = "Lavender heart"
  MINIMUM_NO_FOR_DISCOUNT = 2

  attr_reader :price_difference

  def initialize
    @price_difference = 0.0
  end

  def spending_promotion(price)
    amount_to_reduce_by = (SPENDING_PROMOTION_PERCENTAGE* price).round(2)
    final_price = price - amount_to_reduce_by
    final_price
  end

  def item_promotion(basket)
    basket.each do |item|
      if item[0] == DISCOUNT_ITEM
        @price_difference += (item[1] - DISCOUNTED_PRICE)
      end
    end
  end

  def check_for_hearts(basket)
    basket.count { |item| item[0] == DISCOUNT_ITEM } >= MINIMUM_NO_FOR_DISCOUNT
  end

end
