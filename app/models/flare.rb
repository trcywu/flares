class Flare < ActiveRecord::Base
  belongs_to :user
  mount_uploader :photo, PhotoUploader

  # validates :title, presence: true, length: { in: 3..50 }
  # validates :description, presence: true
  # validates :time, presence: true
  # validates :expiration_date_cannot_be_in_the_past

  #   def expiration_date_cannot_be_in_the_past
  #     if expiration_date.present? && expiration_date < Date.today
  #       errors.add(:expiration_date, "can't be in the past")
  #     end
  #   end 

  end

