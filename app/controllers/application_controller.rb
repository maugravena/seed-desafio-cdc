class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid do |e|
    render json: {
      message: e.message
    }, status: :precondition_failed
  end
end
