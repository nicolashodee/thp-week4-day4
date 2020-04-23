class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor  :case_number, :value

  def initialize(case_number,value)
    @case_number = case_number
    @value = value
  end

end 
