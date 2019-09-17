def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  puts 
  if songs.include?(input)
    puts "Playing #{input}"
  elsif songs[input.to_i - 1]
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index{|item, index|
    puts "#{index + 1}. #{item}"
  }
end

def exit_jukebox
end

def run 
end