class Run < ApplicationRecord
  has_many :comments, dependent: :destroy, inverse_of: :run
end
