class Transfer
  attr_accessor :transfer, :sender, :receiver, :amount
  attr_reader :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && @status == "pending"
        sender.balance -= amount
        receiver.balance += amount
        # binding.pry
        @status = "complete" #self.status???
      end
    if !@sender.valid?
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
  end

  # def reverse_transfer
  #   if
  #   @status = "reversed"
  # end

end
