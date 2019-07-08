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
    if valid? && sender.balance > amount @@ self.status == "pending"
    status = "complete"

    p "Transaction rejected. Please check your account balance."
    status = "rejected"
  end


end
