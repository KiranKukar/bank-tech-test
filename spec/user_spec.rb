require 'user'

describe User do
  let(:user) { User.new }

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
  
end