require_relative 'student_main.rb'


herds = []

student_file = File.open("students.txt")
while !student_file.eof?
  student = student_file.gets.chomp.split(/,/)
  herds << Student.new(student[0], student[1], student[2])
end
student_file.close

herds.each do |student|
  puts student
end
class Student
  attr_accessor :name, :sid, :program
  def initialize(name, sid, program)
    @name = name
    @sid = sid
    @program = program
    @classes = []

  end

  def add_class(klass)
    @classes << klass

  end

  def remove_class(klass)
    @classes.delete (klass)
  end

  def klass
    @classes
  end

  def to_s
    return "#{@name.ljust(20)} #{@sid.ljust(20)} #{@program.ljust(20)}"
  end







end