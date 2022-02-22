# bank tech test
===============

# Requirements

* Use IRB to interact with program.
* User actions: deposit money, withdraw money, prints statement.
* Account statement prints: date, credit amount, debit amount, balance
* Data doesn't need to be stored to a database.

# Acceptance criteria

- Given a client makes a deposit of 1000 on 10-01-2023
- And a deposit of 2000 on 13-01-2023
- And a withdrawal of 500 on 14-01-2023
- When she prints her bank statement
- Then she would see:

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00

# How to run the code
- clone the repo to your machine
- run bundle install
- start irb by running 'irb' in the terminal
- set up by running these commands in irb:
  * require './lib/user.rb'
  * user = User.new
- to deposit money(e.g. 1000) in the account:
  * user.deposit(1000)
- to withdraw money(e.g. 500) from the account:
  * user.withdraw(500)
- to view your statement:
  * user.statement

# How to run the tests
 - make sure you have rspec installed
 - and you're in the 'bank-tech-test- directory
 - run 'rspec' in the terminal
 - 
![Screenshot 2022-02-22 at 01 25 40](https://user-images.githubusercontent.com/92406004/155046421-f4445c99-d200-4f67-967f-aee309542d99.png)



