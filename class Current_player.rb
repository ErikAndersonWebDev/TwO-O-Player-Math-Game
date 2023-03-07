class Current_player
  attr_accessor :players, :current
  def initialize(one, two)
    @players = [one, two]
  end
  def current
    @current = @players[1]
  end
  def next
    if @current == @players[0]
      @current = @players[1]
    else
      @current = @players[0]
    end
  end
end

