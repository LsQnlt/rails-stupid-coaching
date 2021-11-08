class QuestionsController < ApplicationController

  def ask; end

  def answer
    @question = params[:question]
    if @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'

    elsif @question != 'I am going to work right now!'
      @answer = "I don't care, get dressed and go to work!"

    elsif @question == 'I am going to work right now!'
      @answer = ''
    end
  end

  # def coach_answer(your_message)
  #   if your_message.include?("?")
  #     return "Silly question, get dressed and go to work!"

  #   elsif your_message != "I am going to work right now!"
  #     return "I don't care, get dressed and go to work!"

  #   elsif your_message == "I am going to work right now!"
  #     return ""
  #   end
  # end

  # def coach_answer_enhanced(your_message)
  #   if your_message == "I AM GOING TO WORK RIGHT NOW!"
  #     return ""

  #   elsif your_message == your_message.upcase
  #     return "I can feel your motivation! I don't care, get dressed and go to work!"

  #   elsif your_message.include?(?).upcase == your_message
  #     return "I can feel your motivation! Silly question, get dressed and go to work!"

  #   else coach_answer(your_message)
  #   end
  # end
end
