class Minion
  include Comparable

  attr_accessor :name, :atk, :defense, :HP

  def initialize(minion_name, minion_atk, minion_def, minion_HP)
    @name = minion_name
    @atk = minion_atk.to_f
    @defense = minion_def.to_f
    @HP = minion_HP.to_f
  end

  def <=>(other)
    return 0 if self.atk <= other.defense && other.atk <= self.defense
    return (self.atk-other.defense) <=> (other.atk-self.defense) if self.atk <= other.defense || other.atk <= self.defense
    (self.HP / (other.atk-self.defense)) <=> (other.HP/(self.atk-other.defense))
  end
end

# Implementation
footman = Minion.new('footman', 699, 5, 40)
archer = Minion.new('archer', 1, 700, 40)
rider = Minion.new('rider', 10, 6, 60)

puts [footman, archer, rider].max.name
puts archer == footman

