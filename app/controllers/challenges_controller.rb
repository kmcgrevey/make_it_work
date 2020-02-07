class ChallengesController < ApplicationController

  def create
    Challenge.create(challenge_params)
  end

  private

  def challenge_params
    params.permit(:theme, :budget)
  end

end
