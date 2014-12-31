class SayController < ApplicationController
  # Defined action, by defining a method inside the controller, and then it expects to find the view.
  def hello
    @time=Time.now
  end

  def goodbye
  end
  
  def create
    render plain:params[:article].inspect
  end
end
