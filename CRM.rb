require relative 'contact.rb'

class CRM
	def initialize(name)
		@name = name
	end

	def print_main_menu
		puts "Type 'add' to add a new contact"
		puts "Type 'modify' to modify an existing contact."
		puts "Type 'display all' to see a list of all of your contacts"
		puts "Type 'display' contact' to see the details of an existing contact"
		puts "Type 'delete' to remove a contact from your list"
		puts "Type 'exit' to leave the program"
	end
	def main_menu
		print_main_menu
		while true
		user_input = gets.chomp
		break if user_input == "exit"
  	choose_option(user_input)
  end
  end

  def choose_option(user_input)
			case user_input
				when "add" then instructions
				when "modify" then controls
				when "display all" then start
				when "display" then display
				when "delete" then delete
				else
				puts "sorry I didn\'t understand that command"
			end
	end
	def add
		puts "first_name:"
		first_name = gets.chomp
		puts "last_name:"
		last_name = gets.chomp
		puts "email:"
		email = gets.chomp
		puts "notes:"
		notes = gets.chomp

