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
    @balance
  end

  def display_balance
    @balance
  end

  def self.valid?
    if @balance < 0 && status == "open"
      true
    else
      false
    end
  end

  def close_account
    @status = "closed"
    @status
  end

end
