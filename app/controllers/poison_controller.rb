class PoisonController < ApplicationController

  def index
    @criteria = params
                 .permit(Mushroom.filters)
                 .select { |k,value| value.empty? == false }
    mushrooms = Mushroom.where(@criteria)

    @poison = PoisonProbability.calculate(mushrooms)
    @filters = Mushroom.filter_options
  end
  
end
