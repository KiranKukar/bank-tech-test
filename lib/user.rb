require 'account_balance'

class User

  def initialize(account = AccountBalance.new)
    @account = account
  end

  def deposit(amount)
    @account.deposit(amount)
  end

  def withdraw(amount)
    @account.withdraw(amount)
  end

  def balance
    @account.balance
  end

end