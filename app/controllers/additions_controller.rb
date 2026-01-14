class AdditionsController < ActionController::API
  def create
    number_one = params[:number_one].to_f
    number_two = params[:number_two].to_f
    
    sum = number_one + number_two
    
    render json: {
      number_one: number_one,
      number_two: number_two,
      sum: sum
    }
  end
end

