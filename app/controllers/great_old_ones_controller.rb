class GreatOldOnesController < ApplicationController
  def great_old_ones_action
    @great_old_one = Great_old_one.new
    render great_old_ones.html.erb
  end
end
