require 'bundler'
Bundler.require

require_relative 'lib/views/board'
require_relative 'lib/views/boardcase'
require_relative 'lib/app/game'
require_relative 'lib/app/player'



my_morpion = Game.new
my_morpion.ask_name
my_morpion.turn

# my_morpion.game_end(@current_player)

=begin
my_morpion = Board.new
my_morpion.show_board
my_morpion.victory?
=end