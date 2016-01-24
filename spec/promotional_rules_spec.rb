require 'promotional_rules'

describe PromotionalRules do
  let(:products) { double(:products, :items => {001 => ["Lavender heart", 9.25],
                                      002 => ["Personalised cufflinks", 45.00],
                                      003 => ["Kids T-shirt", 19.95]}) }

  subject(:promotion) {described_class.new}

  it "gives you the spending percentage promotion in decimal" do
    expect(PromotionalRules::SPENDING_PROMOTION_PERCENTAGE).to be_instance_of(Float)
  end

  it "should have a promotion that that takes away 10%" do
    price = 10
    expect(promotion.spending_promotion(price)).to eq 9
  end

  it "can count the number of hearts in a basket" do
    basket = [products.items[1],products.items[2],products.items[1]]
    expect(promotion.check_for_hearts(basket)).to equal(true)
  end

  it "can replace the price of Lavender hearts" do
    basket = [products.items[1]]
    expect{promotion.item_promotion(basket)}.to change{basket[0][1]}.to(PromotionalRules::DISCOUNTED_PRICE)
  end

end
