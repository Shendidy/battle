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

  def attack(player)
    player.receive_damage
    switch_turns
  end

  def switch_turns
    temp = @current_player
    @current_player = @waiting_player
    @waiting_player = temp
  end
end
