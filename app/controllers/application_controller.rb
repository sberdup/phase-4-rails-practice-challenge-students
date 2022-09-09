class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_error
rescue_from ActiveRecord::RecordNotFound, with: :not_found_error

    private 

    def unprocessable_error invalid
        render json: invalid.record.errors.full_messages, status: :unprocessable_entity
    end

    def not_found_error invalid 
        render json: "#{invalid.model} not found!", status: :not_found
    end

end
