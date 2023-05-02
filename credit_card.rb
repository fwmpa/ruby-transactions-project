class CreditCard < Account
    def initialize(name, balance, bank = nil)
        super(name, balance, :credit_card, bank)
    end
end