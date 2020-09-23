# This handles getting inputs from the players
class Player
attr_accessor  :name,:token

  def initialize(name='',token='')
    @name = name
    @token = token
  end 

end
