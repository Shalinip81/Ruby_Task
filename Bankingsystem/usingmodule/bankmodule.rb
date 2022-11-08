# frozen_string_literal: true

require 'csv'
require 'byebug'
require './modu'

# code starts here
class Bank
  extend Input
  def initialize(_balance = 0)
    @balance = 0
  end

  def check_account
    puts 'Do you have account in HDFC bank y/n'
    chk = gets.chomp
    chk == 'y' ? account_login : account_registration
  end

  def account_registration
    Bank.input_data
    check_account
  end

  def account_login
    print "Enter details to Login!!\nEnter Email-id:"
    @email1 = gets.chomp
    print 'Enter Password:'
    @pass1 = gets.chomp
    actlo_check
    account_option
  end

  def actlo_check
    csv = CSV.read('bank.csv', headers: true)
    if csv.find { |data| data['Email'] == @email1 && data['Password'] == @pass1 }
      puts "Login Successfully!!\n\n"
    else
      puts 'OOPS! Enter correct details'
      exit
    end
  end

  def account_option
    puts 'Enter Your Choice!!'
    puts "Enter 1 for Withdraw Money\nEnter 2 for Deposit Money\nEnter 3 to check  Balance\nEnter 4 to Exit\n"
    @choice = gets.chomp.to_i
    case @choice
    when 1 then withdraw_money
    when 2 then deposit_money
    when 3 then check_balance
    when 4
      exit
    end
  end

  def withdraw_money
    print 'Enter amount to withdraw:'
    @amountw = gets.chomp.to_i
    if @amountw.negative? || @amountw > @balance
      print "Enter valid amount!!\n"
      exit
    # elsif @amountw > @balance
    #   puts 'you have not a sufficient balance to withdraw money'
    #   exit
    else
      @balance -= @amountw
      puts "Balance :#{@balance}"
    end
    account_option
  end

  def deposit_money
    print 'Enter amount to Deposit:'
    @amountd = gets.chomp.to_i
    if @amountd.negative?
      print "Enter Valid amount\n"
      exit
    else
      @balance += @amountd
      puts "Balance : #{@balance}"
    end
    account_option
  end

  def check_balance
    puts "Balance : #{@balance}"
    account_option
  end
end

bank = Bank.new
bank.check_account
