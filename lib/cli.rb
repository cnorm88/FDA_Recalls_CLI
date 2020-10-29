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
    # keep asking for user input #???an EXIT
      puts "Sorry invalid input. Choose a valid number"
      index = gets.strip.to_i - 1
      end

      instance = Reports.all[index]
      recall_details(instance)
    end

    # def exit_or_continue
    #   puts "\n"
    #    puts "If you would like to find out more information type Yes or a list of states type List or type any button to exit"
    #
    #       choice = gets.strip.capitalize
    #
    #      case choice
    #
    #      when "Yes"
    #        recall_details(self)
    #      when "List"
    #         puts "#{report.name}"
    #      else
    #         puts "thank you"
    #      end
    #     # end
    # end

    def recall_details(report)
      puts "\n"
      # report = report.name
      puts "What would you like to know about this #{report.name} recall? Here are your options:
      Location, Description, Date, Quantity"
#for other options type exit
      choice = gets.strip.capitalize

     case choice

  when "Location"
       puts "State: #{report.state} City: #{report.city}"
       recall_details(report)

when "Description"
      puts report.description
      puts report.recall_reason
      recall_details(report)
  when "Date"
    puts report.date
    recall_details(report)

  when "Quantity"
      puts "\n"
      puts report.quantity

     else
       exit_or_continue
     end
     end

    #  puts something to exit or "Sorry try again (method to try again) or type Options to acquire more information"
   # calls recall_details(report) -> to try again
   # ask would you like to try again ^ else "no" = exit

   # when "Option"
    #  puts "\n"
    #  puts "Would you like to ? if Yes enter Y to continue and any button to exit"
    #  user_input = gets.strip.downcase
    #  if user_input == "Y" || user_input == "y"
    #    puts "Lets continue"
    #    #or a new method
    #when "exit"

    #  else
    #    puts "thanks" //the exit

  #the new method
      #all the recalls made in a specific state or specific time frame
def exit_or_continue
  puts "\n"
   puts "If you would like to find out more information type Yes or a list of states type List or type any button to exit"

      choice = gets.strip.capitalize

     case choice

     when "List"
        puts "hey"
     else
        puts "thank you"
     end
    # end
end

# def self.find_by_name(name)
#     @@all.find do |song|
#       song.name == name
#     end
#   end

end
