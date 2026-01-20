class AdditionsController < ActionController::API
    def create
      # Validate that required parameters are present
      unless params[:number_one].present? && params[:number_two].present?
        return render json: { 
          error: "Missing required parameters: number_one and number_two are required" 
        }, status: :bad_request
      end
  
      # Convert to float and validate they are actual numbers
      number_one = Float(params[:number_one])
      number_two = Float(params[:number_two])
      
      sum = number_one + number_two
      
      render json: {
        number_one:,
        number_two:,
        sum:
      }
    rescue ArgumentError => e
      render json: { 
        error: "Invalid input: number_one and number_two must be valid numbers" 
      }, status: :bad_request
    end
end

