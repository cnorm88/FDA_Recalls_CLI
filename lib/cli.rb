class Cli

  def start
    puts "Please enter your name:"
    # name = gets.strip.capitalize
    # puts "Welcome to the Yanker Poster collection search #{name}"
    Api.get_poster
    # self.menu
  end

  def display_list_of_posters
  #access all the posters
  #print each one out
  Poster.all.each.with_index(1) do |poster, index|
    puts "#{index}. #{poster.name}"
  end
end


end
