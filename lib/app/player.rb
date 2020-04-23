class Player
   attr_reader :name, :symbol
  
    def initialize(name_to_save, symbol_to_save)
      @name = name_to_save
      @symbol = symbol_to_save
    end
    
    def ask_name
      #DONE : demande leur nom au joueur et leur attribut un symbol
      puts "Nom du premier joueur ?"
      print "> "
      @players << Player.new(gets.chomp.to_s, "O")   #on initialise le joueur 1 avec initialize(name_to_save, symbol_to_save) defini dans players.rb
  
      puts "Nom du deuxieme joueur ?"
      print "> "
      @players << Player.new(gets.chomp.to_s, "X")  #idem pour le joueur 2
    end

    def display_names 
      puts "Le nom du joueur 1 est #{@players[0].name} et son symbole est #{@players[0].symbol}"
      puts "Le nom du joueur 2 est #{@players[1].name} et son symbole est #{@players[1].symbol}"
    end

end