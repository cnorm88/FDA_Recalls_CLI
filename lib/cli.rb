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
      #give an indexed list of recalls
      # list_of_recalls
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

  def list_of_recalls
  #access all the posters
  #print each one out
  # Poster.all.each.with_index(1) do |report, index|
  #   report = report.name
  #   puts "#{index}. #{report}"
  # end
  end

  # def randomizer
  #     poster = Poster.all.sample
  #     puts poster.name
  # end



end
