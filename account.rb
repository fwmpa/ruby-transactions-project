class Account < ActiveRecord::Base
    has_many :transactions

    # attr_reader :name
    # attr_accessor :type, :bank, :balance
    
    # def initialize(name, balance = nil, type = nil, bank = nil)
    #     @name    = name
    #     @type    = type
    #     @bank    = bank

    #     update_balance(balance) unless balance.nil?
    # end

    def balance
        Transaction.where(account_name: name).sum(&:amount)
    end

    def debit(amount)
        transaction = Transaction.new(account_name: name, amount: amount * -1)
        transaction.save
        
        transaction.balance
    end

    def credit(amount)
        transaction = Transaction.create(account_name: name, amount: amount)

        transaction.balance
    end

    def update_balance(amount)
        Transaction.new(account_name: name, amount: amount, description: 'saldo inicial').save
    end
end 