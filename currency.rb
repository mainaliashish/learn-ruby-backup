class Currency
    attr_accessor :format_to_nepali
    def initialize(currency)
        @currency = currency
    end

    def format_to_nepali
      @currency.to_s.chars.to_a.reverse
    end
end

currency = Currency.new(200000)
puts(currency.format_to_nepali)