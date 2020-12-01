class Sport < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  def to_json(options={})
    options[:except] ||= [:sport_id]
    super(options)
  end
end
