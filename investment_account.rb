class InvestmentAccount < Account
    def initialize(name, balance, bank = nil)
        super(name, balance, :investment, bank)
    end
end