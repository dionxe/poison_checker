class PoisonController < ApplicationController

  def index
    @filters = Mushroom.filter_options
    @poison = PoisonProbability.calculate(Mushroom.all)
  end
  
end
