class CheckingAccount < Account
    def initialize(name, balance = nil, bank = nil)
        super(name, balance, :checking, bank)
    end
end