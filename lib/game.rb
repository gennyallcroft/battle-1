class Game

  attr_reader :players, :current_player, :other_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @other_player = player_2
  end

  def player_1
    @player_1 = players.first
  end

  def player_2
    @player_2 = players.last
  end

  def attack(player)
      player.reduce_hit_points
  end

  def switch_player(player)
    if @current_player == @player_1
      @current_player = @player_2
      @other_player = @player_1
    else
      @current_player = @player_1
      @other_player = @player_2
    end
  end


end
