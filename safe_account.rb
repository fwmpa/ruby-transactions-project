class SafeAccount < Account
    def initialize(name, balance, bank = nil)
        super(name, balance, :safe, bank)
    end
end