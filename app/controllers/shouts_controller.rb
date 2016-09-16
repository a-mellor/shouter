class ShoutsController < ApplicationController
  def create
    shout = current_user.shouts.build(shout_paramaters)
    shout.save
    redirect_to dashboard_path
  end

  private

  def shout_paramaters
    params.require(:shout).permit(:body)
  end
end
