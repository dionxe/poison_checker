class PoisonProbability

  attr_reader :poisonous, :edible

  def initialize(poisonous, edible)
    @poisonous = poisonous
    @edible = edible
  end

  # return int total
  def total
    @poisonous + @edible
  end

  # return float probabilty
  def probability
    return 0 if total == 0
    @poisonous.to_f / total
  end

  # expect ActiveRelation of Mushroom
  def self.calculate(mushrooms)
    poisonous = mushrooms.group(:poisonous).count
    self.new(poisonous[true], poisonous[false])
  end
end
