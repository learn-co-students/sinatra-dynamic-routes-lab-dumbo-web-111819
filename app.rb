require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name_string = params[:name]
    name_string.split('').reverse.join('')
  end

  get '/square/:number' do
    new_number = params[:number].to_i
     "#{new_number ** 2}"
  end

  get '/say/:number/:phrase' do
    @new_phrase = params[:phrase]
    @new_number = params[:number].to_i


    string = ''
    @new_number.times do 
      string += @new_phrase
    end 
    string

  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_one = params[:word1]
    word_two = params[:word2]
    word_three = params[:word3]
    word_four = params[:word4]
    word_five = params[:word5]

    "#{word_one} #{word_two} #{word_three} #{word_four} #{word_five}."
  end

  get "/:operation/:number1/:number2" do 
    
    number_one = params[:number1].to_i
    number_two = params[:number2].to_i
    # binding.pry

    if params[:operation] == "add"
      "#{number_one+number_two}"
    elsif params[:operation] == "subtract"
      "#{number_one - number_two}"
    elsif params[:operation] == "multiply"
      "#{number_one * number_two}"
    elsif params[:operation] == "divide"
      "#{number_one / number_two}"
    end

  end

end