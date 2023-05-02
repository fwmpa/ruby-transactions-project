class Transaction < ActiveRecord::Base
    belongs_to :account

    def balance
        Transaction.where(account_name: account_name).sum(&:amount)
        # sum = 0
    
        # CSV.foreach(db_file, headers: true) do |transaction|
        #     transaction = transaction.to_h
    
        #     sum += transaction['amount'].to_i if account_name == transaction['account_name']
        # end
    
        # sum
    end

end

# class Transaction
#     ATTRIBUTES = %w[account_name amount description]

#     attr_reader :account_name, :amount, :description
#     def initialize(account_name, amount = nil, description = nil)
#         @account_name = account_name
#         @amount       = amount
#         @description  = description
#     end



#     def save
#         CSV.open(db_file, 'a+') do |csv|
#             csv << ['account_name', 'amount', 'description'] if CSV.parse(db_file, headers: true).headers.empty?

#             csv << [account_name, amount, description]
#         end
#     end

#     def db_path
#         Dir.pwd + '/db'
#     end

#     def db_file
#         Dir.mkdir(db_path) unless Dir.exists?(db_path)

#         File.new(db_path + '/transactions.csv', 'a+')
#     end
# end