require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if @sender.valid? == true && @receiver.valid? == true
      true
    end
  end

  def execute_transaction
      @sender.balance = @sender.balance - @amount unless @sender.balance < @amount
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
    end
  end
  binding.pry


end
