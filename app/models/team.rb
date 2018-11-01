class Team < ApplicationRecord
  scope :eastern, -> { where(conference: "Eastern")}
  scope :western, -> { where(conference: "Western")}
  

  scope :sort_by_wins, -> { order(wins: :desc) }
  scope :sort_by_losses, -> { order(losses: :desc) }


  def win_rate
    "#{(100 * wins / (wins + losses.to_f)).round(1).to_s}%"
  end


end

