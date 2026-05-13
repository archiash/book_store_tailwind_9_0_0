class Subscriber < ApplicationRecord
  belongs_to :book
  generates_token_for :unsubscribe
end
