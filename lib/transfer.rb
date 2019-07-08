class Transfer
  attr_accessor :transfer, :sender, :receiver
  attr_reader :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  # def sender
  #   @sender
  # end


end
