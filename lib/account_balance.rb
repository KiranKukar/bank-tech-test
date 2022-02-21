class AccountBalance
  attr_reader :balance

  def initialize
    @balance = 0
    @record = [["date", "credit", "debit", "balance"]]
  end

  def deposit(amount, date)
    @balance += amount
    @record << [date, "", amount, @balance]
  end

  def withdraw(amount, date)
    @balance -= amount
    @record << [date, amount, "", @balance]
  end

  def statement
    @record.each do |line|
      puts line.join(" || ")
    end

  end

end