# frozen_string_literal: true

class CrossRate1
  attr_reader :a_bid, :b_offer

  def initialize(a_bid, b_offer)
    @a_bid = a_bid
    @b_offer = b_offer
  end

  def bid
    a_bid / b_offer
  end
end

class CrossRate2
  attr_reader :a_offer, :b_bid

  def initialize(a_offer, b_bid)
    @a_offer = a_offer
    @b_bid = b_bid
  end

  def offer
    a_offer / b_bid
  end
end

p CrossRate1.new(100.00, 0.9100).bid.round(2)
p CrossRate2.new(100.05, 0.9095).offer.round(2)
