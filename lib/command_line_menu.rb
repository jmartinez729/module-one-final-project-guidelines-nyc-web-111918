

def menu_options
  input = gets.chomp

    if input == "1" || input == "search by athlete" || input == "athlete"
      get_athlete_from_user
    elsif input == "2" || input == "search by event" || input == "event"
      get_event_from_user
    elsif input == "3" || input == "search by injuries" || input == "injuries"
      get_injuries
    elsif input == "4" || input == "see all data" || input == "all"
      get_all_info_menu
    elsif input == "5" || input == "exit"
      puts "Goodbye!"
      exit
    end
end

def get_all_info_menu_options
  input = gets.chomp

  if input == "1" || input == "athlete information" || input == "athlete"
    get_athlete_info
  elsif input == "2" || input == "event information" || input == "event"
    get_event_info
  elsif input == "3" || input == "injury information" || input == "injuries"
    get_injuries_info
  elsif input == "4" || input == "see all data" || input == "all"
    get_all_info
  elsif input == "5" || input == "main menu" || input == "menu"
    system("clear")
    welcome
  end
end

# ------> Information <------
def get_athlete_from_user
  clear_f
  puts "please enter an athlete's name:"
  # use gets to capture the user's input. This method should return that input, downcased.
  athlete_name = gets.chomp.downcase
  Athlete.get_injuries(athlete_name)
  welcome
end

def get_event_from_user
  clear_f
  puts "please enter an event's name:"
  # use gets to capture the user's input. This method should return that input, downcased.
  event_name = gets.chomp.downcase
  Event.get_injuries(event_name)
  welcome
end

def get_injuries
  sclear_f
  puts "please enter an injury:"
  injury_name = gets.chomp.downcase
  Injury.get_info(injury_name)
  welcome
end
# ------> Information End <------

# ------> All Data Lists <------

def get_all_info
  clear_f
  Injury.return_all_info
  get_menu
end

def get_athlete_info
  clear_f
  Athlete.get_player_names
  get_menu
end

def get_event_info
  clear_f
  Event.get_event_names
  get_menu
end

def get_injuries_info
  clear_f
  Injury.only_injury_info
  get_menu
end
#------>End All Data Lists <------

#------>Helper Mehtods<------
def clear_f
  system("clear")
  puts ""
end

def get_menu
  puts ""
  get_all_info_menu
end
#------>Helper Mehtods End<------