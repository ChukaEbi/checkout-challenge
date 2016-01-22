require 'promotional_rules'

describe PromotionalRules do

  subject(:promotion) {described_class.new}

  it "gives you the spending percentage promotion in decimal" do
    expect(PromotionalRules::SPENDING_PROMOTION_PERCENTAGE).to be_instance_of(Float)
  end

  it "should have a promotion that that takes away 10%" do
    price = 10
    expect(promotion.spending_promotion(price)).to eq 9
  end

  it " sees if more than one of the same item is bought" do
    expect(promotion.more_than_one).to be_falsey
  end

end
