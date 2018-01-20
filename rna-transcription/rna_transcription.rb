class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
  }
  def self.of_dna(dna)
    rna = dna.chars.map {|nucleotide| DNA_TO_RNA[nucleotide]}.join
    rna.size == dna.size ? rna : ''
  end
end

module BookKeeping
  VERSION = 4
end
