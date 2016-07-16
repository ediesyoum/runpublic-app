class Comment < ApplicationRecord
  belongs_to :run, inverse_of: :comments
end
