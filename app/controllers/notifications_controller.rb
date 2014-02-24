class TasksController < ApplicationController

  def index
    @notifications = Notification.all
  end

  def new
    @notification = Notification.new
  end

  def show
    #commenting because of bug when it wants to find notification through tasks.
    #@notification = Notification.find(params[:id])

  end

  def create
    @notification = Notification.new(task_params)
    @notification.user_id = current_user.id
  end
  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy
    if @notification.destroy
      flash[:success] = "Notification Deleted Correctly"
      redirect_to myriorunner_path(current_user.id)
    else
      flash.now[:error] = "Could not Delete Notification"
      render 'new'
    end
  end

  private
  #def task_params
  #  params.require(:task).permit(:subject, :description, :deliverables, :duration, :price, :due_date)
  #end
  #def task_params
   # params.require(:task).permit(:user_id, :id, :subject, :description, :deliverables, :zipcode)
  #end

end


