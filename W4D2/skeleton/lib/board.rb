class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |ele, idx|
      next if idx == 6 || idx == 13
      (0...4).each do |i|
        cups << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "error" if @cups[start_pos].empty?
    raise "error" if start_pos < 0 || start_pos > 12
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    while !stones.empty?
      start_pos += 1

    end    
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
    score_1 = @cups[6].count
    score_2 = @cups[13].count
    if score_1 == score_2
      :draw
    else
      score_1 > score_2 ? @name1 : @name2
    end
  end
end
