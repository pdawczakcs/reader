Reaper::Application.routes.draw do
  match "/parser/parse" => "parser#parse", :as => :parse
  root :to => "parser#index"
end
