class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = @players.first
    @waiting_player = @players.last
  end

  def current_player
    @current_player
  end

  def waiting_player
    @waiting_player
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    temp = @current_player
    @current_player = @waiting_player
    @waiting_player = temp
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end
end
