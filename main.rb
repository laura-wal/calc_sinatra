require 'sinatra'
require 'sinatra/contrib/all'
require 'pry'

get '/' do
  @operator = params[:operator] 
  if @operator
    @first = params[:first].to_f
    @second = params[:second].to_f
    
    @result = case @operator
    when '+' then @first + @second
    when '-' then @first - @second
    when '*' then @first * @second
    when '/' then @first / @second
    end
  end
  erb :home
end

get '/power' do
    @first_p = params[:first_p].to_f
    if @first_p > 0.0
      @second_p = params[:second_p].to_f
      @result_power =  @first_p ** @second_p
    end
    erb :power
  end


get '/square_root' do
    @first_r = params[:first_r].to_f
    if @first_r > 0.0
      @result_r = Math.sqrt(@first_r)
    end
    erb :square_root
  end

get '/Bmi' do
  @first_b = params[:first_b].to_f
  if @first_b > 0.0
    @second_b = params[:second_b].to_f
    @result_b = @first_b/(@second_b**2)
  end
  erb :Bmi
end

get '/Mortgage' do
  @first_m = params[:first_m].to_f
  if @first_m > 0
  @second_m = params[:second_m].to_f
  @third_m = params[:third_m].to_f
  @result_o = (1+@second_m)**@third_m
  @result_o = params[:result_o]
  @result_tt = @first_m*@second_m*@result_tt/(@result_o-1)
  end
erb :Mortgage
end






