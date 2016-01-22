require 'checkout'

describe Checkout do

  let(:products) { double(:products, items => {001 => ["Lavender heart", 9.25],
                                      002 => ["Personalised cufflinks", 45.00],
                                      003 => ["Kids T-shirt", 19.95]}) }
  let (:promotional_rules) { double(:promotional_rules) }


  subject(:checkout) {described_class.new}

  context "when I want to  buy an item" do
    describe "#scan" do
      it "adds an item to the basket" do
        checkout.scan(1)
        expect(checkout.basket).to include(["Lavender heart", 9.25])
      end
    end
  end

end
