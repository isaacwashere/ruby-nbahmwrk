class TeamsController < ApplicationController
  before_action :set_sorted

  def league

  end

  def eastern
    @teams = Team.eastern

  end

  def western
    @teams = Team.western
  end

  private 


  def set_sorted
    @teams  = case params[:sort]
      when "by_wins"
        Team.all.sort_by_wins
      when "by_losses"
        Team.all.sort_by_losses
      else
        Team.all
      end   
  end


end
