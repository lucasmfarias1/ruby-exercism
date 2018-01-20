class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.size == strand2.size

    strand1.chars.zip(strand2.chars).count { |s1, s2| s1 != s2 }
  end
end

module BookKeeping
  VERSION = 3
end
