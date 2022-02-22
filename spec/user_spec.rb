require 'user'
require 'date'

describe User do
  let(:user) { User.new }
  let(:date) { Date.today }
  let(:formatted_date) { "#{date.day}/#{date.month}/#{date.year}" }

  it "user can deposit money" do
    expect { user.deposit(500) }.not_to raise_error
  end

  it "users balance increases after they deposit money" do
    user.deposit(500)
    expect(user.balance).to eq 500
  end

  it "users balance decreases when they withdraw money" do
    user.deposit(900)
    user.withdraw(300)
    expect(user.balance).to eq 600
  end

  it "prints users transaction records" do
    user.deposit(1900)
    user.withdraw(600)
    expect { user.statement }.to output("date || credit || debit || balance\n#{formatted_date} ||  || 600 || 1300\n#{formatted_date} || 1900 ||  || 1900\n").to_stdout
  end

  
  
end
