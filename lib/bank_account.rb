class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance
    @balance
  end

  def self.valid?
    if @balance < 0 && status != "closed"
      true
    else
      false
    end
  end



end
