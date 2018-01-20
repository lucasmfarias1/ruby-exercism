class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    marked_numbers = []
    (2..@limit).reject do |n|
      marked_numbers += ((n+n)..@limit).step(n).reject do |m|
        marked_numbers.include?(m)
      end
      marked_numbers.include?(n)
    end
  end
end

class BookKeeping
  VERSION = 1
end
