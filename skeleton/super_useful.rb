# PHASE 2
def convert_to_int(str)
  begin
   Integer(str)
  rescue ArgumentError, TypeError
    return nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit) #this method will produce an error
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit.include?("coffee")
    raise CoffeeError
  else
    raise StandardError 
  end 
end

class CoffeeError < StandardError

end

def feed_me_a_fruit #this method will handle the error
  
  puts "Hello, I am a friendly monster. :)"
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin 
    maybe_fruit = gets.chomp 
    reaction(maybe_fruit) 
  rescue CoffeeError
    puts "Feed me coffee for another try"
    retry
  rescue StandardError
    puts "No!!!!!"
  end
    
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
       if @name.length <= 0
        raise "That's not a real name"
       end
    @yrs_known = yrs_known
       if @yrs_known < 5
         raise "yrs known has to be greater than 5"
       end
    @fav_pastime = fav_pastime
      if @fav_pastime.length <= 0 
       raise "That's not a pastime." 
      end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end

end




