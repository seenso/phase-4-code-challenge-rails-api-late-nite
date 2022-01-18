class AppearancesController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  # POST /appearances
  def create
    appearance = Appearance.create!(params.permit(:rating, :episode_id, :guest_id))
    render json: appearance, serializer: AppearanceWithGuestEpisodeSerializer, status: :created
  end

  private

  def render_unprocessable_entity_response(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

end
