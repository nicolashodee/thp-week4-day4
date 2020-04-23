class Game
  ######## les fonctions sont ecrites dans l'ordre ou on les appelle dans une partie normale #########
  #DONE : la classe a plusieurs attr_accessor: 
  #le current_player (égal à un objet Player), 
  #le status (en cours, nul ou un objet Player s'il gagne), 
  #le Board et un array contenant les 2 joueurs.

  attr_accessor :current_player, :status, :board, :players

  def initialize
    #DONE : créé un array vide de joueurs, créé un board 
    #TO-DO :met le status à "on going", défini un current_player
    @players = []
    @board = Board.new
  end

  def select_player

  end 

  def play_turn(player)
    #DONE: demande au joueur ce qu'il souhaite faire
    puts "C'est à ton tour #{player.name}. Tu as le symbole '#{player.symbol}'entre la case que tu souhaites jouer (A1, B3, C1, etc)"
    print "> "
    case_choosen = gets.chomp
    #DONE: change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    @board_array.write_on_case(case_choisie.to_s, player.symbol)
  end

  #une fonction perform qui execute toutes celles enoncees ci dessus 
  def perform
    ask_name #DONE: demande les noms des joueurs avec la fonction definie dans player.rb et les affiche ci dessous 
    display_name #DONE: affiche les noms grace a la fonction definie dans player.rb
    @board.show_board #DONE: affiche le tableau vide avec la fonction show_board definie dans board.rb
    #TO DO: appeler une fonction victory? definie dans board.rb qui verifie qu'aucun joueur n'a gagné 
      #TO DO: si oui, appeller une fonction select_player qui selectionne un joueur 
      #TO DO: appeller la fonction play_turn pour le joueur selectionné (deja definie plus haut)
  end



  # Autres fonctions non definies pour l'instant 


  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  end    

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

end