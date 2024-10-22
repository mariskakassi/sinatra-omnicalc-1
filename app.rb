require "sinatra"
require "http"
require "sinatra/reloader"

get("/") do
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @num = params.fetch("number").to_i
  @result = @num * @num
  erb(:square_result)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @num = params.fetch("number").to_i
  @result = Math.sqrt(@num)
  erb(:square_root_result)
end

get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @apr = params.fetch("apr").to_f
  @yrs = params.fetch("years").to_f
  @princi = params.fetch("principal").to_f

  r = (@apr / 100.0) / 12.0
  n = @yrs * 12
  p = @princi
  @pay = (r * p) / (1 - ((1 + r)**(-n)))
  erb(:payment_result)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  erb(:random_result)
end
