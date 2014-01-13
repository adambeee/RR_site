class TasksController < ApplicationController

    def index
      @tasks = Task.all
    end

    def new
      @task = Task.new
    end

    def show
      @task = Task.find(params[:id])
    end

    def create
      @user = current_user
      @task = @user.tasks.create(params[:tasks])

      if @task.save
        #redirect_to task_path
        redirect_to riorunner_path
      else
        render 'new'
      end
    end
    #def create
     # @task = Task.new(params[:task]) # Not the final implementation!
      #if @task.save
       # flash[:success] = "Task Posted Correctly"
        #redirect_to root_path
      #else
       # redirect_to root_path
      #end
    #end

    private
    def task_params
      params.require(:task).permit(:subject, :description, :deliverables, :duration, :price, :due_date)
    end

end


