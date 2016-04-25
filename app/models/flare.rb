class Flare < ActiveRecord::Base
  acts_as_commentable
  acts_as_nested_set
  belongs_to :user
  has_many :comments
  mount_uploader :photo, PhotoUploader

  validates :title, presence: true, length: { in: 3..50 }
  validates :description, presence: true
  # validates :time, presence: true
  validates :category, presence: true
  end
  # validates :date_cannot_be_in_the_past

  #   def date_cannot_be_in_the_past
  #     if date.present? && date < Date.today
  #       errors.add(:date, "can't be in the past")
  #     end
  #   end 



