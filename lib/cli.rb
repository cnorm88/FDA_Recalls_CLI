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
    puts "Would you like to see a list of recalls made by the FDA in 2020?"
    puts "Type 'C' to continue or any other key to exit"
    user_input = gets.strip.downcase
    #if the user types C
    if user_input == "C" || user_input == "c"
      puts "Here's a list!"
      #give an indexed list of recalls
      list_of_recalls
      users_selection
      sleep(1)
      puts "\n"

      # menu
    else
      puts "Maybe next time"
    end

  end

  def list_of_recalls
  #access all the posters
  #print each one out
  Reports.all.each.with_index(1) do |report, index|
    report = report.name
    puts "#{index}. #{report}"
  end
  end

  #     puts "What would you like to know about this poster? Here are your options:
  #     Title, Description, Link to image, Location"
  #     choice = gets.chomp.capitalize
  #     case choice
  #  when "Title"
  #      puts
  #  end

    #would you like to know which state the recall was located?
    #the city, date, reason, product description and how many items were recalled?

    #all the recalls made in a specific state or specific time frame
    def users_selection
      puts "Enter the number of the report you'd like to know more about"
        index = gets.strip.to_i - 1
        #index valid? #btwn 0 & 6
      until index.between?(0, Reports.all.length - 1)
    # keep asking for user input
      puts "Sorry invalid input. Choose a valid number"
      index = gets.strip.to_i - 1
      end

      instance = Reports.all[index]
      recall_details(instance)
    end

    def recall_details(report)
      puts "What would you like to know about this #{report.name} recall? Here are your options:
      Location, Description, Recall Date, Quantity"

      choice = gets.strip.capitalize

     case choice
    #  when "State"
    #      puts "\n"
    #      puts report.location
    #  else
    #    puts "Sorry try again."
    #  end

  when "Location"
       puts "\n"
       state = report.state
       city = report.city
       puts "State: #{location}, City: #{city}"
   when "Description"
      puts report.description
      puts report.recall_reason
   else
     puts "Sorry try again."
   end
   end
  #  when "Description"
  #    puts "\n"
  #    puts report.description
  #  else
  #    puts "Sorry try again."
  #  end

#    title = gets.chomp
#    puts "How would you rate it?"
#    rating = gets.chomp
# if movies[title.to_sym].nil?
#    movies[title.to_sym] = rating.to_i
#    puts "#{title} has been added with a rating of #{rating}."
# else
#    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."


    #   sleep(1)
    #   puts "\n"
    #   puts drink.name
    #   puts "Glass: " + drink.glass
    #   puts "Instructions: " + drink.instructions
    #   puts "German Instructions: " + drink.german_instructions
    # end

    #all the recalls made in a specific state or specific time frame


end
