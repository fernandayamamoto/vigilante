class Incident < ApplicationRecord
  belongs_to :user
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  TYPES = ["Roubo", "Furto", "Assédio", "Outros"]

  validates :location, presence: true
  validates :description, presence: true
  validates :incident_type, presence: true, inclusion: { in: TYPES }
end
