require 'user'

describe User do
  let(:user) { User.new }
  let(:date) { "03/03/22" }

  it "user can deposit money" do
    expect { user.deposit(500, date) }.not_to raise_error
  end

  it "users balance increases after they deposit money" do
    user.deposit(500, date)
    expect(user.balance).to eq 500
  end

  it "users balance decreases when they withdraw money" do
    user.deposit(900, date)
    user.withdraw(300, date)
    expect(user.balance).to eq 600
  end

  it "prints users transaction records" do
    user.deposit(1900,date)
    user.withdraw(600, date)
    expect { user.statement }.to output("date || credit || debit || balance\n03/03/22 ||  || 1900 || 1900\n03/03/22 || 600 ||  || 1300\n").to_stdout
  end

  
  
end