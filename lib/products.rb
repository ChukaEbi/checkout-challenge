class Products

  AVAILABLE_ITEMS = {001 => ["Lavender heart", 9.25],
                     002 => ["Personalised cufflinks", 45.00],
                    003 => ["Kids T-shirt", 19.95]
                    }
  attr_reader :items

  def initialize
    @items = AVAILABLE_ITEMS
  end

end
