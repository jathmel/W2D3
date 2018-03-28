class Game
  attr_reader :towers

  def initialize
    @towers = [
      [3, 2, 1],
      [],
      []
    ]
  end

  def play
    render

    until won?
      play_turn
      render
    end

    puts "Congratulations, you win!"
  end

  def play_turn
    choice = get_move
    move(choice)
  end

  def move(choice)
    s, e = choice
    raise "can't move larger peg on to smaller peg" unless valid_move?(s, e)

    peg = towers[s].pop
    towers[e] << peg

  end

  def won?
    towers[0].empty? && (towers[1].empty? || towers[2].empty?)
  end



  private
  def valid_move?(s, e)
    return false if towers[s].empty?

    unless towers[e].empty?
      return towers[s].last < towers[e].last
    end

    true
  end

  def get_move
    puts "Please enter a start tower"
    s = gets.chomp.to_i
    puts "Please enter an end tower"
    e = gets.chomp.to_i
    [s, e]
  end

  def render
    towers.each_with_index do |tower, i|
      puts "tower #{i}: #{tower}"
    end
  end

end

g = Game.new
g.play
