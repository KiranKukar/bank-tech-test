require 'date'

class AccountBalance
  attr_reader :balance

  def initialize
    @balance = 0
    @record = []
  end

  def withdraw(amount)
    @balance -= amount
    date = Date.today
    @record << ["#{date.day}/#{date.month}/#{date.year}", "", amount, @balance]
  end

  def deposit(amount)
    @balance += amount
    date = Date.today
    @record << ["#{date.day}/#{date.month}/#{date.year}", amount, "", @balance]
  end

  def statement
    headers = ["date", "credit", "debit", "balance"]
    puts headers.join(" || ")
    @record.reverse.each do |line|
      puts line.join(" || ")
    end

  end

end