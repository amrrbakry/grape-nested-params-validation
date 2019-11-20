module Endpoints
  class Sessions < Grape::API
    namespace :sessions do
      params do
        requires :registration, type: Hash do
          requires :total_capacity, type: Integer, message: :name_required
          requires :waiting_list_enabled, type: Boolean
          optional :unlimited_capacity, type: Boolean
        end
      end
      post do
        {}
      end
    end
  end
end
