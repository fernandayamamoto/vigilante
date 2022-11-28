class Incident < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
