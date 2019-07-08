class Transfer
  attr_accessor :transfer, :sender, :receiver
  # attr_reader :sender, :receiver,

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
