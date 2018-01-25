class Review < ApplicationRecord
  belongs_to :roast
  belongs_to :serving
  belongs_to :reviewer
end
