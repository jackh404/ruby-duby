class Student
  attr_reader :name
  @@university = 'NCSU'

  def initialize(name)
    @name = name
  end

  def self.show_identity
    puts 'Im a student'
  end

  private

  def private_method
  end

end

aStudent = Student.new('Ethan')

puts aStudent.class  #1 => Student
puts aStudent.class.superclass #2 => Object
puts aStudent.instance_variables #3 => @name
puts aStudent.class.instance_methods false #4 => name
puts aStudent.class.methods false #5 => show_identity
puts aStudent.class.class_variables #6 => @@university
puts aStudent.class.show_identity #7 => Im a student
puts aStudent.private_methods false #8 => private_method initialize
#
