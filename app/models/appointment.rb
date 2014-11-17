class Appointment < ActiveRecord::Base
  validates :parent_names, :email_addresses, presence: true
  # validates_presence_of :parent_names, :phone_numbers, :email_addresses,
  #                       :children_names, :children_ages
  validate :tour_must_be_future

  def tour_must_be_future
    required_days_in_future = 7
    if tour_date < Time.now + required_days_in_future * (24 * 60 * 60)
      errors.add(:tour_date, "must be at least #{required_days_in_future} day in the future")
    end
  end
end

