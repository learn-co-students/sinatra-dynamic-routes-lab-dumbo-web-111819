require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @x = params[:name]
    @y = @x.split("")
    "#{@y.reverse.join("")}"
  end

  get '/square/:number' do
    @x = params[:number].to_i
    "#{@x ** 2}"
  end
  get '/say/:number/:phrase' do
    @x = params[:number].to_i
    @y = params[:phrase]
    z  = ""
    @x.times do
      z += @y
    end
    z
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_one = params[:word1]
    word_two = params[:word2]
    word_three = params[:word3]
    word_four = params[:word4]
    word_five = params[:word5]
    "#{word_one} #{word_two} #{word_three} #{word_four} #{word_five}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    first_number = params[:number1].to_i
    second_number = params[:number2].to_i
    result = 0
    if operation == "add"
      result = first_number + second_number
      "#{result}"
    elsif operation == "subtract"
      result = first_number - second_number
      "#{result}"
    elsif operation == "multiply"
      result = first_number * second_number
      "#{result}"
    elsif operation == "divide"
      result = first_number / second_number
      "#{result}"
    end
  end

end