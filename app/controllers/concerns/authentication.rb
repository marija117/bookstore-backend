module Authentication
  extend ActiveSupport::Concern

  # included do
  #   before_action :authenticate
  # end

  # private
  #   def authenticate
  #     val = yield if block_given?
  #     user = val || current_user
  #     if user
  #       Current.auth_user = user
  #     else
  #       Current.auth_user = nil
  #     end
  #   end
end