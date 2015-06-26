require 'pry'

# class InvalidGuessError < RuntimeError
  
# end

# class PlayerDeadError < RuntimeError

# end

@player1 = {
  name:"",
  hp: 3,
  score: 0
}
@player2 = {
  name:"",
  hp: 3,
  score: 0
}

@operator = ['+','-','*']
@a = 0
@b = 0

def get_question
  
  puts "#{@player1[:name]}: what is #{@a = rand(1..20)} #{temp_op1 = @operator.sample} #{@b = rand(1..20)}."
  answer1 = gets.chomp.to_i
  evaluate(answer1, @player1, temp_op1)
  puts "#{@player2[:name]}: what is #{@a = rand(1..20)} #{temp_op2 = @operator.sample} #{@b = rand(1..20)}."
  answer2 = gets.chomp.to_i
  evaluate(answer2, @player2, temp_op2)

end

def evaluate(temp1, player, a_operator)
  temp1 == @a.public_send(a_operator, @b) ? player[:score] += 1 : player[:hp] -= 1
  puts "#{player[:name]} score: #{player[:score]} hp: #{player[:hp]}"
  restart_game if player[:hp] == 0

end

def restart_game
  puts "Restart game? press any key to continue, type quit to QUIT"
  input = gets.chomp.downcase
  if input.eql?("quit")
    exit
  end
  @player1[:hp] = 3
  @player1[:score] = 0
  @player2[:hp] = 3
  @player2[:score] = 0


end

puts "Enter p1 name: "
input1 = gets.chomp
@player1[:name] = input1
puts "Enter p2 name: "
input2 = gets.chomp
@player2[:name] = input2

while true  
  get_question
end
