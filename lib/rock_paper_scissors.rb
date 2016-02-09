class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; 
      def initialize(msg = "Strategy must be one of R,P,S")
         super(msg)
      end  
  end

  def initialize()
  end
  
  def self.winner(player1, player2)
    # YOUR CODE HERE
    #word =~ /[^#{x}]/) && !(x =~ /[^#{word}]
    my_play = (player1[1]+player2[1])
    if my_play=~/[^PRS]/ 
        raise RockPaperScissors::NoSuchStrategyError
    end
    
    states = {'PR'=>'1', 'RP'=>'2', 'PS'=>'2', 'SP'=>'1', 'SR'=>'2', 'RS'=>'1', 'RR'=>'1', 'SS'=>'1','PP'=>'1'}
    case states[my_play]
    when '1'
        player1
    when '2'
        player2
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
#puts RockPaperScissors.new().winner(["Armando","R"], ["Armando","w"])

