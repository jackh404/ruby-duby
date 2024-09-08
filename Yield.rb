class Array
  def every_third
    index = 0
    self.each do |x|
      yield x if (index % 3).zero?
      index+=1
    end
  end
end

[1, 2, 3, 4, 5, 6, 7, 8, 9].every_third { |x| print "#{x}, " }

