require 'pry'
require 'active_record'

require_relative 'config/database'

require_relative 'account'
require_relative 'checking_account'
require_relative 'investment_account'
require_relative 'safe_account'
require_relative 'credit_card'
require_relative 'transaction'

acc = CheckingAccount.find_or_create_by(account_name:'Principal')

binding.pry
