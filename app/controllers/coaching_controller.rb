class CoachingController < ApplicationController
  def ask
  end

  def answer
  # def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    @your_message = params[:query]
    message = ""
    message = "I can feel your motivation! " if @your_message == @your_message.upcase
    if @your_message.include?("?")
      @response = "#{message}Silly question, get dressed and go to work!"
    elsif (@your_message == "I am going to work right now!") || (@your_message == "I am going to work right now!".upcase)
      @response = ""
    else
      @response = "#{message}I don't care, get dressed and go to work!"
    end
  end
end
