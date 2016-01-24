require 'products'

describe Products do
  subject(:products) {described_class.new}

  it "possesses an array of products" do
    expect(products.items.values).to include(["Personalised cufflinks", 45.00])
  end
end
