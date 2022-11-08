# frozen_string_literal: true

module Input
  def input_data
    puts 'Enter Details to create your account!!!'
    print 'Enter Your Name:'
    @name = gets.chomp
    print 'Enter Your Email-id:'
    @email = gets.chomp
    duplicacy
    print 'Create Password :'
    @password = gets.chomp
    print 'Re-enter Password:'
    repass = gets.chomp
    if @password == repass
      require 'csv'
      headers = %w[Name Email Password Balance]
      CSV.open('bank.csv', 'a+') do |csv|
        csv << headers if csv.count.eql? 0
        csv << [@name, @email, @password, @balance]
      end
      puts "Register Successfully!!\n\n"
    else
      puts 'Password not matched!! Please! check password again'
      exit
    end
  end

  def duplicacy
    table = CSV.read('bank.csv', headers: true)
    table.find do |row|
      if row['Email'] == @email
        puts 'Email already present!!'
        exit
      end
    end
  end
end
