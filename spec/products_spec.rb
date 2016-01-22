require 'products'

describe Products do
  subject(:products) {described_class.new}

  it "possesses an array of products" do
    expect(products.items.values).to include(["Lavender heart", 9.25])
  end
end
