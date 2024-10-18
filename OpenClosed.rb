module Program
	def get_code
    	raise "Not implemented"
  	end

  	def get_type
    	raise "Not implemented"
 	end

 	def run_program
    	raise "Not implemented"
 	end
end

# require './program.rb'

class PythonProgram
	include Program

	def get_code
		return "print \"hello world\""
	end

	def get_type
		return "Python"
	end

	def run_program
		puts "Running Python program: " + get_code
	end
end

# require './program.rb'

class RubyProgram
	include Program

	def get_code
		return "puts \'hello world\'"
	end

	def get_type
		return "Ruby"
	end

	def run_program
		puts "Running Ruby program: " + get_code
	end
end

# require './program.rb'

class JavaProgram
	include Program

	def get_code
		return "System.out.println(\"hello world\");"
	end

	def get_type
		return "Java"
	end

	def run_program
		puts "Running Java program: " + get_code
	end
end

# require './java_program.rb'
# require './python_program.rb'
# require './ruby_program.rb'

java = JavaProgram.new
python = PythonProgram.new
ruby = RubyProgram.new

java.run_program
python.run_program
ruby.run_program
