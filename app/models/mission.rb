class Mission < ApplicationRecord
  belongs_to :listing
  enum :status, [:first_checkin, :last_checkout, :checkout_checkin]
end
