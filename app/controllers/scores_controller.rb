class ScoresController < ApplicationController
  def update
    @score = Score.find(params[:id])

    @score.update(score_params)
  end

  private
    def score_params
      params.require(:score).permit(:value_p1, :value_p2, :value_p3, :value_p4)
    end
end
