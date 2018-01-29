require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    reverse_name = params[:name].reverse
    "#{reverse_name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num*num
    "#{square}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    to_return = []
    num.times do
      to_return << phrase
    end
    to_return.each do |phrase|
      "#{phrase}\n"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation
    when "add"
      result = num1 + num2
    when "subtract"
      result = num1 - num2
    when "multiply"
      result = num1 * num2
    when "divide"
      result = num1 / num2
    end
    "#{result}"
  end



end
