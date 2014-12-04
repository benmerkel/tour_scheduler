class Appointment < ActiveRecord::Base
  # validates :parent_names, :email_addresses, presence: true
  # # validates_presence_of :parent_names, :phone_numbers, :email_addresses,
  # #                       :children_names, :children_ages
  # validate :tour_must_be_future, :valid_tour_days
  #
  # def tour_must_be_future
  #   required_days_in_future = 3
  #   # if tour_date < Time.now + required_days_in_future * (24 * 60 * 60)
  #   #   errors.add(:tour_date, "must be at least #{required_days_in_future} day in the future")
  #   # end
  # end
  #
  # def valid_tour_days
  #   if tour_date.friday? || tour_date.saturday? || tour_date.sunday?
  #     errors.add(:tour_date, "must be Monday through Thursdays. You selected #{tour_date.strftime("%A")}")
  #   end
  # end
end

