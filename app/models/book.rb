class Book < ActiveRecord::Base
  validates :Name, presence: true
  validates :Email, presence: true
  validates :When, presence: true
  validates :When, uniqueness: true
  validates :Tickets, presence: true
  #has_many :sport, class_name: "Sport", foreign_key: "sport_id"
  belongs_to :sport, class_name: "Sport", foreign_key: "sport_id"
  belongs_to :sport_price
  def prof
    @book = Book.find(params[:id])
    @sport= @book.sports
  end


  # Create a function to  get total amount paid for each booking (Sportprice * Tickets)
  def totalamount

  end
end
