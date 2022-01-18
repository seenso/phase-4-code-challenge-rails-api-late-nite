class AppearanceWithGuestEpisodeSerializer < ActiveModel::Serializer
  attributes :id, :rating

  belongs_to :episode, serializer: EpisodeSerializer
  belongs_to :guest, serializer: GuestSerializer
end