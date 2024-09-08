class RandomSequence
  def initialize(limit,num)
    @limit,@num = limit,num
  end
  def each
    @num.times { yield (rand * @limit).floor }
  end
end
i = []
  RandomSequence.new(10,4).each do |num|
    i.append(num)
  end
puts i