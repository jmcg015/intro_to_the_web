require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  "Hello!"
end

get "/secret" do
  "Keep it secret. Keep it safe!"
end

get "/moria" do
  "Speak friend and enter"
end

get "/balrog" do
  "YOU SHALL NOT PASS!"
end

get "/cat" do
  "<div>
    <img src='https://i.imgur.com/jFaSxym.png'>
  </div>"
end
