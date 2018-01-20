class Squares
  def initialize(number)
    @number = number
  end

  def square_of_sum
    # Shorter version commented out; clearer version preferred
    # (1..@number).inject(&:+) ** 2
    (1..@number).inject { |acc, n| acc + n } ** 2
  end

  def sum_of_squares
    (1..@number).inject { |acc, n| acc + (n ** 2) }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

class BookKeeping
  VERSION = 4
end
