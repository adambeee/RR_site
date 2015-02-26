class SessionsController < ApplicationController


def match_task_to_runner
  @message = Message.find(params[:id])
  Task.match_task_to_runner(@message)
end