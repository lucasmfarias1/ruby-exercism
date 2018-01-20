class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    marked_numbers = []
    (2..@limit).each do |n|
      next if marked_numbers.include?(n)
      marked_numbers += (n+n..@limit).step(n).reject do |n|
        marked_numbers.include?(n)
      end
    end
    (2..@limit).to_a - marked_numbers
  end
end

class BookKeeping
  VERSION = 1
end
