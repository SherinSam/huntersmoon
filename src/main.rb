require_relative "misc"
require "terminal-table"
require "colorize"

class Continent

    attr_accessor :fuel, :ores, :penalty, :probable_outcomes, :success_number

    def initialize fuel, ores, penalty, probable_outcomes
        @fuel = fuel
        @ores = ores
        @penalty = penalty 
        @probable_outcomes = probable_outcomes        # number of probable outcomes
        @success_number = 1                           # secret number for a successful invasion
    end

    # draws a random number between 0 - (probable_outcomes + 1)
    def number_randomizer
        (rand() * (@probable_outcomes + 1)).floor
    end
    
    # calls the randomizer method to draw a random number
    # updates player's details according to the result of the draw
    def invasion_result player_hash_details
        random_number = number_randomizer
        if random_number == @success_number
            player_hash_details[:fuel_level] += @fuel
            player_hash_details[:ore_quantity] += @ores
            puts Misc::HASHES.colorize(:yellow)
            puts "\t\t#{"Success!".colorize(:green)} Fuel won: #{@fuel} Ores won: #{@ores}"
            puts Misc::HASHES.colorize(:yellow)
        else
            player_hash_details[:fuel_level] -= @penalty
            puts Misc::HASHES.colorize(:yellow)
            puts "\t\t\t#{"Failed!".colorize(:red)} Fuel penalty: #{@penalty}"
            puts Misc::HASHES.colorize(:yellow)
        end
        return player_hash_details
    end

end

# creating instances of Continent class initializing specific values
# example = Continent.new(@fuel, @ores, @penalty, @probable_outcomes)
north_america = Continent.new(100, 1500, 50, 10)
asia = Continent.new(80, 500, 30, 7)
europe = Continent.new(100, 1000, 25, 6)
south_america = Continent.new(30, 20, 20, 5)
australia = Continent.new(20, 100, 15, 4)
africa = Continent.new(10, 50, 10, 3)
antarctica = Continent.new(10, 0, 5, 2)

game_interface_table = Terminal::Table.new :rows => Misc::GAME_INTERFACE, :headings => ["", "Continent", "Odds of winning", "Fuel", "Ores", "Fuel Penalty"], :title => "Invade Continents" 

# align data to the right
game_interface_table.align_column(2, :right)
game_interface_table.align_column(3, :right)
game_interface_table.align_column(4, :right)
game_interface_table.align_column(5, :right)

# deletes previous table row for new player details
def delete_previous_data array
    array.delete_at(0)
end

def clear
    system("clear")
end

player_data = []
high_score = []
captain_counter = 0
first_time = true

# GAME CODE

while true

    puts Misc::INTRO_LOGO.colorize(:light_blue)

    player_details = {
        fuel_level: 500,
        ore_quantity: 0
    }

    captain_counter += 1

    print """
    \t\t1. #{"Play Game".colorize(:light_blue)}
    \t\t2. #{"High Scores".colorize(:red)}
    \t\tx. Exit
    \t\tSelect an option: """
    player_input = gets.chomp

    if player_input == "1"
        print "\nWhat is your name? "
        player_name = gets.chomp.downcase.capitalize
        player_details[:name] = player_name
        
        puts "\nWelcome Captain #{player_details[:name]}, you must be from the #{Misc::SPECIES.sample} species."
        
        # printing intro
        Misc.printintro1
        puts "but luckily you are my Captain No. #{captain_counter}."
        Misc.printintro2

        clear
        while true 
            if player_details[:fuel_level] > 0
                player_data << [player_details[:name], player_details[:fuel_level], player_details[:ore_quantity]]
                player_data_table = Terminal::Table.new :rows => player_data, :headings => ["Player Name", "Fuel Level", "Ores"]
                
                # game interface
                puts game_interface_table
                puts player_data_table
                print "Which continent do you want to invade? "
                continent_choice = gets.chomp.to_i

                if continent_choice == 1
                    clear
                    # updating player_details
                    player_details = north_america.invasion_result(player_details)
                    delete_previous_data(player_data)
                elsif continent_choice == 2
                    clear
                    player_details = asia.invasion_result(player_details)
                    delete_previous_data(player_data)
                elsif continent_choice == 3
                    clear
                    player_details = europe.invasion_result(player_details)
                    delete_previous_data(player_data)
                elsif continent_choice == 4
                    clear
                    player_details = south_america.invasion_result(player_details)
                    delete_previous_data(player_data)
                elsif continent_choice == 5
                    clear
                    player_details = australia.invasion_result(player_details)
                    delete_previous_data(player_data)
                elsif continent_choice == 6
                    clear
                    player_details = africa.invasion_result(player_details)
                    delete_previous_data(player_data)
                elsif continent_choice == 7
                    clear
                    player_details = antarctica.invasion_result(player_details)
                    delete_previous_data(player_data)
                else
                    clear
                    puts "Invalid Input".colorize(:red)
                    delete_previous_data(player_data)
                end
            else
                clear
                puts Misc::GAME_OVER.colorize(:red)
                puts "\t\t\t#{player_details[:name]} your score is #{player_details[:ore_quantity]} points".colorize(:yellow)
                # pushes current player details into high_score array
                high_score << [
                    player_details[:ore_quantity],
                    player_details[:name]
                ]
                `say "game over"`
                break
            end
        end
    elsif player_input == "2"
        clear
        puts Misc::HIGH_SCORE.colorize(:yellow)
        # sorts high_score in decrementing order
        sorted_high_score = high_score.sort.reverse
        # displays high_score
        sorted_high_score.each_with_index do |player_array, index|
            if index == 0
                puts "\t\t\t\t\t\t#{index + 1}. #{player_array[1]}: #{player_array[0]} points".colorize(:yellow)
            else
                puts "\t\t\t\t\t\t#{index + 1}. #{player_array[1]}: #{player_array[0]} points"
            end
        end
    elsif player_input == "x"
        clear
        puts Misc::FUN_FACTS.sample.colorize(:green)
        break
    else 
        puts "Invalid Input"
    end
end