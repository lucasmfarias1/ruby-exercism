class Raindrops
  SOUND_TRANS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }
  def self.convert(raindrop)
    sound = SOUND_TRANS.select { |k| raindrop % k == 0 }
    sound.empty? ? raindrop.to_s : sound.values.join
  end
end

module BookKeeping
  VERSION = 3
end
