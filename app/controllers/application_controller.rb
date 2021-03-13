class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    include Authentication
    
    respond_to :json
  
    NotAuthorized = Class.new(StandardError)
  
    rescue_from ApplicationController::NotAuthorized do |exception|
      render_error_page(status: 403, text: 'Forbidden')
    end
  
  
    private
  
    def render_error_page(status:, text:)
      render json: {errors: [message: "#{status} #{text}"]}, status: status 
    end
  
  end
  