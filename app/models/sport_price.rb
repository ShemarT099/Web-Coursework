class SportPrice < ApplicationRecord
  belongs_to :sport
  belongs_to :books
end
