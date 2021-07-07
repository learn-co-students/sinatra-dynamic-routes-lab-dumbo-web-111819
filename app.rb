require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number]
    # binding.pry
    (@num.to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    repeated_phrase = ''
    # binding.pry
    params[:number].to_i.times do
    repeated_phrase += params[:phrase]
    end
    repeated_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    word_string = "#{word1} #{word2} #{word3} #{word4} #{word5}."

  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
       (num1 + num2).to_s
    when 'subtract'
       (num1 - num2).to_s
    when 'multiply'
       (num1 * num2).to_s
    when 'divide'
       (num1 / num2).to_s
    end
  end
end
