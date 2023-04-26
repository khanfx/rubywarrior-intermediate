require 'pry-byebug'

MAX_HP = 20

class Player

  def initialize
    puts '-- Player initialize called --'
    @turn = 0
    @minhealth = 20
    @lasthealth = 20
  end

  def play_turn(warrior)
    @turn += 1

    # Here's what various troubleshooting features look like

    # puts warrior.inspect
    # puts warrior.to_s
    # pp warrior

    # if @turn == 35
    #   binding.pry
    # end

    # binding.pry

    puts "Results of feel:"
    pp warrior.feel

    puts "Direction of stairs: #{warrior.direction_of_stairs}"

    warrior.walk! warrior.direction_of_stairs
  end
end
