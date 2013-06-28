class Musicbox

  def initialize song_cost
    @songs = []
    @song_cost = 10
    @current_song = ''
    @turned_on = false
  end



  def play_music
    puts " #{@song_name} - is playing now"
  end



  def load_song 
    puts 'Please enter the name of the song'
    @song_name = gets.chomp
    puts 'The song is loading...'
  end



  def pay  
    puts "Price of one song - #{@song_cost}. Please pay"
    @money = gets.chomp
    if @money.to_i < @song_cost
      check = false
      begin
        puts "You need #{@song_cost.to_i - @money.to_i} to play the song. Please pay."
        @more_money = gets.chomp
        @money = @money.to_i + @more_money.to_i
        if @money.to_i >= @song_cost
          check = true
        end
      end until check
    end
  end
  


  def turn_on 
    unless @turned_on
      @turned_on = true
      puts "Box was turned on"
    else
      p 'already turned on'
    end
  end



  def turn_off
    if @turned_on
      puts "Box was turned on"
      @turned_on = false
    else
      puts "Box was turned off"
    end
  end



 



  def status 
    if @turned_on
      p "Turned on"
    else 
      p "Turned off"
    end
  end
end

box = Musicbox.new 10
box.turn_on
box.status
box.turn_on
box.pay
box.load_song
box.play_music