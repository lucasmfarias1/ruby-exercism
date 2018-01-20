class Integer
  R_T = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }
  def to_roman
    digits = self.to_s.chars.map(&:to_i)

    digits.map.with_index do |d, i|
      x = (10 ** (digits.size - (i + 1)))
      if d <= 3
        R_T[x] * d
      elsif d == 4
        (R_T[x]) + (R_T[x * 5])
      elsif d >= 5 && d < 9
        (R_T[x * 5]) + ((R_T[x]) * (d - 5))
      elsif d == 9
        (R_T[x]) + (R_T[x * 10])
      else
        ''
      end
    end.join
  end
end

module BookKeeping
  VERSION = 2
end
