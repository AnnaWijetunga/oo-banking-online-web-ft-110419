require "pry"

class Transfer

  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end 

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end
  
  def execute_transaction
<<<<<<< HEAD
    #binding.pry
    #What are the prereqs for a transfer to pass 
    #1. Both accounts need to be open 
    #2. Sender balance is greater than the amount (they have sufficient funds)
    #3. Status is pending, not complete or rejected 
  
    
    #if (it's daytime)
    # if (it's before noon)
    #   puts "Good morning!"
    # else puts "Good afternoon"
    # end
    #else puts "Goodnight!"
    
    
    
    if @sender.balance > @amount && @status == "pending" && @receiver.status == "open" && @sender.status == "open"
=======
    binding.pry
    if @sender.balance > @amount && @status == "pending"
>>>>>>> 90c5d8ea1d6105c6c7f60510d3440af4bf87761f
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end 
  end 
<<<<<<< HEAD
  
  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end 
=======
>>>>>>> 90c5d8ea1d6105c6c7f60510d3440af4bf87761f

end


# one instance of the class can transfer money to another instance of the class through a Transfer class

# Transfer class acts as a space b/w two instances of the bank account class

# Transfer instnaces will check the validity of the accounts before the transaction occurs

# Transfer instances should be able to reject a transfer if accounts aren't valid OR if the sender doesn't have the money

# transfers start in "pending" status
# they can be executed and go into a "complete" state 
# they can also go into a "rejected" status
# a completed transfer can be reversed and go into a "reversed" status