class FeedbackController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])

    if @feedback.save
      flash[:notice] = "Thank you. We will address the problem as soon as possible."
      redirect_to new_feedback_path
    else
      flash[:notice] = "We are facing some problem with our system. Please try again later."
      redirect_to new_feedback_path
    end

  end

end
