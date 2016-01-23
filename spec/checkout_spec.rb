require 'checkout'

describe Checkout do

  let(:products) { double(:products, :items => {001 => ["Lavender heart", 9.25],
                                      002 => ["Personalised cufflinks", 45.00],
                                      003 => ["Kids T-shirt", 19.95]}) }
  let (:promotional_rules) { double(:promotional_rules) }


  subject(:checkout) {described_class.new}

  context "when I want to  buy an item" do

    it 'can see the items available for purchase' do
      expect(checkout.items_available).to eq(products.items)
    end

    describe "#scan" do
      it "adds an item to the basket" do
        checkout.scan(1)
        expect(checkout.basket).to include(["Lavender heart", 9.25])
      end
    end

    it "I can see the current total of what is in the basket so far" do
      checkout.scan(1)
      checkout.scan(2)
      expect(checkout.total).to eq(54.25)
    end
  end

  context 'when I have finished with my purchases' do

    describe 'finish_ordering' do

    end
  end
end
