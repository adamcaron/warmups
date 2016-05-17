class NameScorer
  def self.get_alphabetical_value_for_name(name)
    name.chars.map do |char|
      alphabetical_values[char.to_sym.downcase]
    end.inject(:+)
  end

  def initialize(names)
    @sorted_names = names.sort
    @scored_names = score_all_names
  end

  def get_score_of_name(name)
    @scored_names[name]
  end

  private

  def score_all_names
    @sorted_names.each_with_object({}) do |name, score_map|
      score_map[name] = score(name)
    end
  end

  def score(name)
    alphabetical_position = @sorted_names.index(name) + 1
    alphabetical_position * NameScorer.get_alphabetical_value_for_name(name)
  end

  def self.alphabetical_values
    {
      a: 1,
      b: 2,
      c: 3,
      d: 4,
      e: 5,
      f: 6,
      g: 7,
      h: 8,
      i: 9,
      j: 10,
      k: 11,
      l: 12,
      m: 13,
      n: 14,
      o: 15,
      p: 16,
      q: 17,
      r: 18,
      s: 19,
      t: 20,
      u: 21,
      v: 22,
      w: 23,
      x: 24,
      y: 25,
      z: 26
    }
  end

end