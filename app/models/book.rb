class Book < ActiveRecord::Base
  #has_many :sport, class_name: "Sport", foreign_key: "sport_id"
  belongs_to :sport, class_name: "Sport", foreign_key: "sport_id"
  def prof
    @book = Book.find(params[:id])
    @sport= @book.sports
  end
end
