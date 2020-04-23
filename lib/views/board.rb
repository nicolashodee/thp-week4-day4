class Board
  attr_accessor  :board_array

  def initialize
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @A1 = BoardCase.new("A1", " ")
    @A2 = BoardCase.new("A2", " ")
    @A3 = BoardCase.new("A3", " ")
    @B1 = BoardCase.new("B1", " ")
    @B2 = BoardCase.new("B2", " ")
    @B3 = BoardCase.new("B3", " ")
    @C1 = BoardCase.new("C1", " ")
    @C2 = BoardCase.new("C2", " ")
    @C3 = BoardCase.new("C3", " ")
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @board_array = [@A1, @A2, @A3, @B1, @B2, @B3, @C1, @C2, @C3]
  end


  def show_board
    # Affiche un tableau vide 
    puts "   1     2      3   "
    puts " ----------------------------------------------------"
    puts " A #{@A1.content} | #{@A2.content} | #{@A3.content} |"
    puts "-----------------------------------------------------"
    puts " B #{@B1.content} | #{@B2.content} | #{@B3.content} |"
    puts "-----------------------------------------------------"
    puts " C #{@C1.content} | #{@C2.content} | #{@C3.content} |"
    puts " ----------------------------------------------------"

  end

  #fonction pour ecrire dans une case suite au choix du joueur, elle parcourt board_array, et change la valeur au symbole du joueur une fois sur la bonne case
  def write_case (case_choosen, player_symbol)
    @board_array.map { |case| 
    if (case.position == case_choisie) 
      case.content = player_symbol
    else

    end  
    }
  end
  

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

end