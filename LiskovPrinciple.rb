class Computer
	attr_reader :amount_of_ram, :os_version

	def initialize
		@amount_of_ram = 4
		@os_version = 1
	end

	def update_os
		raise "Not implemented"
	end
end

# require './computer'

class Phone < Computer	
	def update_os
		@os_version = @os_version + 1
	end
end

module HardwareUpgradable
	def add_ram(gb)
		raise "Not implemented"
	end
end

# require './computer'
# require './phone'

class ComputerUpgrader
	def upgrade_ram(c)
		c.add_ram(16)
	end

	def upgrade_os(c)
		c.update_os
	end
end


# require './computer'
# require './hardware_upgradable'

class DesktopComputer < Computer
	include HardwareUpgradable
	
	def add_ram(gb)
		@amount_of_ram = @amount_of_ram + gb
	end

	def update_os
		@os_version = @os_version + 1
	end
end

# require './computer_upgrader'
# require './desktop_computer'
# require './phone'

def print_info(desktop_pc, phone)
	puts "Desktop Computer has OS version: " + desktop_pc.os_version.to_s + ", and amount of RAM: " + desktop_pc.amount_of_ram.to_s + " GB."
    puts "Phone has OS version: " + phone.os_version.to_s + ", and amount of RAM: " + phone.amount_of_ram.to_s + " GB."
end

upgrader = ComputerUpgrader.new
desktop_pc = DesktopComputer.new
phone = Phone.new

puts "Before the OS update and RAM upgrade: "
print_info(desktop_pc, phone)
upgrader.upgrade_os(desktop_pc)
upgrader.upgrade_ram(desktop_pc)
upgrader.upgrade_os(phone)

puts "After the OS update and RAM upgrade: "
print_info(desktop_pc, phone);
