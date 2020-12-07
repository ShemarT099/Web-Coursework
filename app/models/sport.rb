class Sport < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true
  belongs_to :books, class_name: "Book", foreign_key: "sport_id"

  def to_json(options={})
    options[:except] ||= [:sport_id]
    super(options)
  end
end
