class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :date, :number

  has_many :appearances # Is this needed? -> , dependent: :destroy
  has_many :guests
end
