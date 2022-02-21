require 'account_balance'

describe AccountBalance do
  let(:account) { AccountBalance.new }

  it "account balance increases with a deposit" do
    account.deposit(700)
    expect(account.balance).to eq 700
  end

  it "account balance decreases with a withdrawel" do
    account.deposit(1100)
    account.withdraw(300)
    expect(account.balance).to eq 800
  end

end