class Run < ApplicationRecord
  has_many :commments, dependent: :destroy
end
