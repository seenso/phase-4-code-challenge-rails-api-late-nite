class GuestsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /guests
  def index
    render json: Guest.all, include: [:id, :name, :occupation]
  end

  private


  def render_not_found_response
    render json: {error: "Guest not found"}, status: :not_found
  end

end
