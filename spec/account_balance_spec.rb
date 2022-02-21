require 'account_balance'

describe AccountBalance do
  let(:account) { AccountBalance.new }
  let(:date) { "03/03/22" }

  it "account balance increases with a deposit" do
    account.deposit(700, date)
    expect(account.balance).to eq 700
  end

  it "account balance decreases with a withdrawel" do
    account.deposit(1100, date)
    account.withdraw(300, date)
    expect(account.balance).to eq 800
  end

  it "statement prints without transaction data if there have been none" do
    expect { account.statement }.to output("date || credit || debit || balance\n").to_stdout
  end

  it "statement will include the deposit record" do
    account.deposit(1700,date)
    expect { account.statement }.to output("date || credit || debit || balance\n03/03/22 ||  || 1700 || 1700\n").to_stdout
  end

  it "statement will include the withdrawal record" do
    account.deposit(1700,date)
    account.withdraw(400,date)
    expect { account.statement }.to output("date || credit || debit || balance\n03/03/22 ||  || 1700 || 1700\n03/03/22 || 400 ||  || 1300\n").to_stdout
  end


end