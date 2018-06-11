require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}" +"."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "+"
      "#{params[:number1] + params[:number2]}"
  end
end
