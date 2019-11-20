class Base < Grape::API
  format :json
  mount Endpoints::Sessions
end
