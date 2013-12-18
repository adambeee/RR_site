class TasksController < ApplicationController

#  def new
#   @title = "Sign Up"
# end

# to get our form to render, we must define an @user variable in the controller action corresponding to new.html.erb,
# i.e., the new action in the Users controller.

  def new
    @task = Task.new
  end
# Here I've used params to retrieve the user id. When I make the appropriate
# request to the Users controller, params[:id] will be the user id 1,
# so the effect is the same as the find method User.find(1)
  def show
    @task = Task.find(params[:id])
  end

# Introduce an if-else branching structure, which allows me to handle the cases of failure and success separately based
# on the value of @user.save, which is either true or false depending on whether the save succeeds.
  def create
    @task = Task.new(params[:task]) # Not the final implementation!
    if @task.save
      @task.save
    else
      #render 'new'
    end
  end

  private

  def task_params
    params.require(:task).permit(:subject, :description, :deliverables, :duration, :price, :due_date)
  end
end

end