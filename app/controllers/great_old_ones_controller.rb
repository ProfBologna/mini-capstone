class GreatOldOnesController < ApplicationController
  def great_old_ones_action
    @great_old_one = GreatOldOne.all
    render 'great_old_ones.html.erb'
  end
end
