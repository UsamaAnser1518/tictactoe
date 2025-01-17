# frozen_string_literal: true

class Player < ApplicationRecord
  validates_presence_of :name

  def win_ratio
    total_games = wins + losses + draws
    total_games > 0 ? wins.to_f / total_games : 0 
  end
end
