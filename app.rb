require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number]
    num = @number.to_i
    (num ** 2).to_s
    # binding.pry
  end

  get "/say/:number/:phrase" do
      string = ''
      @phrase = params[:phrase]
      @number = params[:number].to_i

      @number.times do
        string += @phrase
      end
      string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    str = ""
    str += "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    str

    # binding.pry
  end

  get "/:operation/:number1/:number2" do
    # number1 = params[:number1].to_i
    # number2 = params[:number2].to_i

    num1 = params[:number1].to_i
    num2 = params[:number2].to_i


    if params[:operation] == 'add'
      answer = (num1 + num2).to_s

  elsif params[:operation] =='subtract'
      answer = (num1 - num2).to_s

  elsif params[:operation] =='multiply'
      answer = (num1 * num2).to_s

  elsif params[:operation] == 'divide'
    answer = (num1/num2).to_s
  end

answer
      # case params[:operation]
      # when 'add'
      #   answer = (number1 + number2).to_s
      # when 'subtract'
      #   answer = (number1 - number2).to_s
      # when 'multiply'
      #   answer = (number1 * number2).to_s
      # when 'divide'
      #   answer = (number1 / number2).to_s
      # end
  end
end
