require_relative 'config/environment'

class App < Sinatra::Base
  # get "/" do

  # end

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    "#{params[:number].to_i ** 2}" # lesson : gotta make suure dem "numbers" be integer and dem strings be "string"
  end

  get "/say/:number/:phrase" do
    output = ""
    params[:number].to_i.times { output << params[:phrase] }
    output
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    output = "Error incorrect input"
    if params[:operation] == "add"
      output = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      output = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      output = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      output = (params[:number1].to_i / params[:number2].to_i).to_s
    end
    output
  end

end