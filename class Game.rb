class Game
  def initialize
    @over = false
  end

  def guess(player)
    num1 = rand(1...20)
    num2 = rand(1...20)
    puts "#{player.name}: What does #{num1} plus #{num2} equal?"
    print ">  "
    guess = gets.chomp.to_i
    sum = num1 + num2
    if guess != sum
      puts "\nSeriously? No!"
      player.lives = player.lives - 1
    else
      puts "YES! You are correct!"
    end
  end

  def over
    @over
  end

  def status(p1, p2)
    players = [p1, p2]
    unless p1.lives.to_i == 0 || p2.lives.to_i == 0
      puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
      puts "\n-------- NEW TURN --------\n"
    else
      winner = players.find do |player| player.lives > 0 end
      puts "#{winner.name} wins with a score of #{winner.lives}/3"
      @over = true
      puts "\n-------- GAME OVER --------\n Good bye!"
    end
  end
end