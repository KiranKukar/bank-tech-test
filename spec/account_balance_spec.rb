require 'account_balance'

describe AccountBalance do
  let(:account) { AccountBalance.new }
  let(:date) { Date.today }
  let(:formatted_date) { "#{date.day}/#{date.month}/#{date.year}" }

  it "account balance increases with a deposit" do
    account.deposit(700)
    expect(account.balance).to eq 700
  end

  it "account balance decreases with a withdrawel" do
    account.deposit(1100)
    account.withdraw(300)
    expect(account.balance).to eq 800
  end

  it "statement prints without transaction data if there have been none" do
    expect { account.statement }.to output("date || credit || debit || balance\n").to_stdout
  end

  it "statement will include the deposit record" do
    account.deposit(1700)
    expect { account.statement }.to output("date || credit || debit || balance\n#{formatted_date} || 1700 ||  || 1700\n").to_stdout
  end

  it "statement will include the withdrawal record" do
    account.deposit(1700)
    account.withdraw(400)
    expect { account.statement }.to output("date || credit || debit || balance\n#{formatted_date} ||  || 400 || 1300\n#{formatted_date} || 1700 ||  || 1700\n").to_stdout
  end

end
