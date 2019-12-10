require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].to_s.reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    #"#{params[:phrase]}"*params[:number].to_i
    params[:phrase].to_s*params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #"#{params[:word1].to_s} #{params[:word2].to_s} #{params[:word3].to_s} #{params[:word4].to_s} #{params[:word5].to_s}."
    
    result='' #empty string
    i=1  #set variable i to 1
    while i<6 do  #i from 1 to 5
      word='word'+i.to_s #add word string to number string
      result+="#{params[word.to_sym]} " #add space to each param string and concantenate the resulting string in result
      i=i+1 #increment i
    end
    "#{result.strip}." #strip the space on the far right and add a period
  end

  get '/:operation/:number1/:number2' do
    params[:operation].to_s
    params[:number1]=params[:number1].to_i
    params[:number2]=params[:number2].to_i
    if params[:operation] == 'add'
      result= params[:number1] + params[:number2]
    elsif params[:operation] =='subtract'
      result= params[:number1] - params[:number2]
    elsif params[:operation] =='multiply'
      result= params[:number1]*params[:number2]
    elsif params[:operation] =='divide'
      result= params[:number1]/params[:number2]
    end
    result.to_s
  end
  

end