# frozen_string_literal: true

class CrossRate
  attr_reader :bid, :offer

  def initialize(bid, offer)
    @bid = bid
    @offer = offer
  end

  def ratio
    bid * offer
  end
end

puts CrossRate.new(220, 120).ratio
