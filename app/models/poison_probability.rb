class PoisonProbability

  attr_reader :poisonous, :edible

  def initialize(poisonous, edible)
    @poisonous = poisonous.to_i
    @edible = edible.to_i
  end

  # return int total
  def total
    @poisonous + @edible
  end

  # return float probabilty
  def probability
    return 0 if total == 0
    ((@poisonous.to_f / total) * 100).to_i
  end

  # expect ActiveRelation of Mushroom
  def self.calculate(mushrooms)
    poisonous = mushrooms.group(:poisonous).count
    self.new(poisonous[true], poisonous[false])
  end
end
