class Cli

  def start
    puts "Please enter your name:"
    # name = gets.strip.capitalize
    # puts "Welcome to the Yanker Poster collection search #{name}"
    Api.get_report
    self.menu
  end

  def menu
    #give user option to see list of drinks
    puts "Would you like to see the posters available in the Yanker collection?"
    puts "Type 'C' to continue or any other key to exit"
    user_input = gets.strip.downcase
    #if the user types C
    if user_input == "C" || user_input == "c"
      puts "Here's a list!"
      #gives a random poster
      # randomizer
      list_of_posters
      #allows them to choose an attribute of the poster:
      #shows picture of poster, city, description

      sleep(2)
      puts "\n"

  #     puts "What would you like to know about this poster? Here are your options:
  #     Title, Description, Link to image, Location"
  #     choice = gets.chomp.capitalize
   #
  #     case choice
  #  when "Title"
  #      puts
  #  end
      # menu
    else
      puts "Maybe next time"
    end

  end

  def list_of_posters
  #access all the posters
  #print each one out
  # Poster.all.each.with_index(1) do |poster, index|
  #   poster = poster.name
  #   puts "#{index}. #{poster.name}"
    Poster.all.each.uniq do |poster|
      poster = poster.name
      puts "#{poster}"
  end
  end

  # def randomizer
  #     poster = Poster.all.sample
  #     puts poster.name
  # end



end
