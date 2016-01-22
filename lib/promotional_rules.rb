class PromotionalRules

  SPENDING_PROMOTION_PERCENTAGE = 0.1

  attr_reader :more_than_one

  def initialize
    @more_than_one = false
  end

  def spending_promotion(price)
    amount_to_reduce_by = SPENDING_PROMOTION_PERCENTAGE* price
    final_price = price - amount_to_reduce_by
    final_price
  end

end
