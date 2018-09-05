module Misc
    #random facts 
    FACT_1 = "When you sneeze all your body functions stop, even your heart."
    FACT_2 = "A pregnant goldfish is called a twit"
    FACT_3 = "American astronauts must be under 6 feet."
    FACT_4 = "A full moon always rises at sunset."
    FACT_5 = "1 centillion is 1 followed by 303 zeros."
    FACT_6 = "The bloodhound is the only animal whose evidence is admissible in court."
    FACT_7 = "A single cloud can weigh more than a million pounds."
    FACT_8 = "The average person spends six months of their lifetime waiting for a red light to turn green."
    FACT_9 = "If all the females in a group of clownfish die, a male will change its gender in order to reproduce."
    FACT_10 = "Hippopotomonstrosesquipedaliophobia is the fear of long words."

    #species list
    SPECIES_1 = "Dik-Dik"
    SPECIES_2 = "Roadkill"
    SPECIES_3 = "Emllik"
    SPECIES_4 = "Poke_it_with_a_stick"
    SPECIES_5 = "Flacid"
    SPECIES_6 = "Yuck-Yuck"
    SPECIES_7 = "Cave Dweller"
    SPECIES_8 = "Shovelface"
    SPECIES_9 = "No-Neck"
    SPECIES_10 = "Spaghetti-Monster"
    SPECIES_11 = "Babyhands"
    SPECIES_12 = "Curve-in-the-toilet-pipe"

    FUN_FACTS = [FACT_1, FACT_2, FACT_3, FACT_4, FACT_5, FACT_6, FACT_7, FACT_8, FACT_9, FACT_10]
    SPECIES = [SPECIES_1, SPECIES_2, SPECIES_3, SPECIES_4, SPECIES_5, SPECIES_6, SPECIES_7, SPECIES_8, SPECIES_9, SPECIES_10, SPECIES_11, SPECIES_12]
    
    # data for interface table
    GAME_INTERFACE = [
    ["1", "North America", "10%", "+100", "+1500", "-50"],
    ["2", "Asia", "14%", "+80", "+500", "-30"],
    ["3", "Europe", "17%", "+50", "+300", "-25"],
    ["4", "South America", "20%", "+30", "+200", "-20"],
    ["5", "Australia", "25%", "+20", "+100", "-15"],
    ["6", "Africa", "33%", "+10", "+50", "-10"],
    ["7", "Antarctica", "50%", "+10", "0", "-5"]
    ]

    INTRO_LOGO = '
    _       _________ _______  _______  _  _______    _______  _______  _______  _______   ______       
    |\     /||\     /|( (    /|\__   __/(  ____ \(  ____ )( )(  ____ \  (       )(  ___  )(  ___  )( (    /|
    | )   ( || )   ( ||  \  ( |   ) (   | (    \/| (    )||/ | (    \/  | () () || (   ) || (   ) ||  \  ( |
    | (___) || |   | ||   \ | |   | |   | (__    | (____)|   | (_____   | || || || |   | || |   | ||   \ | |
    |  ___  || |   | || (\ \) |   | |   |  __)   |     __)   (_____  )  | |(_)| || |   | || |   | || (\ \) |
    | (   ) || |   | || | \   |   | |   | (      | (\ (            ) |  | |   | || |   | || |   | || | \   |
    | )   ( || (___) || )  \  |   | |   | (____/\| ) \ \__   /\____) |  | )   ( || (___) || (___) || )  \  |
    |/     \|(_______)|/    )_)   )_(   (_______/|/   \__/   \_______)  |/     \|(_______)(_______)|/    )_)
                                                                                                            
    '

    SPACE_SHIP = "
        |----+                                              +
        |------+                                         +--+-+
        |---------+                                      |    +----+
        |-------------+                                  |    |
        |----------------+                            +-----------+
        +----------------------------------------------------------------------+
        |                                                                +-----+
    +-----+-----+------+                                                     |
    +-+ |-| |     |      |   +         +----+                           +--------+
    | | |-| +     +      |   +---+     |    |                           |--------|
    +-+ |-|    ++    +   |   +         |    |          +------+         +--------+
    +--------------+---|             |    |          |                       |
        |                              |    |          |   +-----+             |
    +--++-----------------------------------+----------+   |---+     +-----------+
    +-+ |    |---------------------------+              |   |--|      |         |-|
    | | |    --------------------------+                +-------------+-----------+
    +-+ |                      |-----+
    +------------------------------+
    +--------------------------+
    +--+ ||    |           |----+
    +--+ ||    |           |--+
    +-------+-------------+ 
    "

    GAME_OVER = '
               ____          _   __ ______    ____ _      __ ______ ___
             / ____|   /\   |  \/  |  ____|  / __ \ \    / /  ____|  __ \ 
            | |  __   /  \  | \  / | |__    | |  | \ \  / /| |__  | |__) |
            | | |_ | / /\ \ | |\/| |  __|   | |  | |\ \/ / |  __| |  _  / 
            | |__| |/ ____ \| |  | | |____  | |__| | \  /  | |____| | \ \ 
             \_____/_/    \_\_|  |_|______|  \____/   \/   |______|_|  \_\

    '

    HIGH_SCORE = '

            /$$   /$$ /$$$$$$  /$$$$$$  /$$   /$$        /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$  /$$$$$$$$
            | $$  | $$|_  $$_/ /$$__  $$| $$  | $$       /$$__  $$ /$$__  $$ /$$__  $$| $$__  $$| $$_____/
            | $$  | $$  | $$  | $$  \__/| $$  | $$      | $$  \__/| $$  \__/| $$  \ $$| $$  \ $$| $$      
            | $$$$$$$$  | $$  | $$ /$$$$| $$$$$$$$      |  $$$$$$ | $$      | $$  | $$| $$$$$$$/| $$$$$   
            | $$__  $$  | $$  | $$|_  $$| $$__  $$       \____  $$| $$      | $$  | $$| $$__  $$| $$__/   
            | $$  | $$  | $$  | $$  \ $$| $$  | $$       /$$  \ $$| $$    $$| $$  | $$| $$  \ $$| $$      
            | $$  | $$ /$$$$$$|  $$$$$$/| $$  | $$      |  $$$$$$/|  $$$$$$/|  $$$$$$/| $$  | $$| $$$$$$$$
            |__/  |__/|______/ \______/ |__/  |__/       \______/  \______/  \______/ |__/  |__/|________/            
            
    '

    HASHES = "#####################################################################"

    def self.printintro1 
        sleep 2
        puts "\nMy name is S.I.S.S.Y:"
        sleep 1.5
        puts "S.hip"
        sleep 0.7
        puts "I.ntelligence"
        sleep 0.7 
        puts "S.tellar"
        sleep 0.7
        puts "S.ystem "
        sleep 0.7
        puts "Y.ardstick"
        sleep 5

        puts SPACE_SHIP

        puts "\nI'm a base model harvester ship,"
    end

    def self.printintro2
        puts "I still got that new leather glorkian smell :)."

        sleep 1
        
        puts "\nYour first mission from high command is to harvest "
        puts "ores from a new stellar planet named Earth."
        
        sleep 1

        puts "\nWe have provided you with:"
        puts "Fuel:  500 Units"
        
        sleep 1

        puts "\nGoodluck!"
        puts "Entering Solar System..."
        puts "We\'re here! Meanwhile Earth is slowly spinning..."

        # sleep 30
    end
end