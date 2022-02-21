class AccountBalance
  attr_reader :balance

  def initialize
    @balance = 0
    @record = []
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
    headers = ["date", "credit", "debit", "balance"]
    puts headers.join(" || ")
    @record.reverse.each do |line|
      puts line.join(" || ")
    end

  end

end