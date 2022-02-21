require 'account_balance'

class User

  def initialize(account = AccountBalance.new)
    @account = account
  end

  def deposit(amount, date)
    @account.deposit(amount, date)
  end

  def withdraw(amount, date)
    @account.withdraw(amount, date)
  end

  def balance
    @account.balance
  end

  def statement
    @account.statement
  end

end