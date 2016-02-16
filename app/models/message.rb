class Message < ActiveRecord::Base
  belongs_to :sender,  class_name: "User", primary_key: :sender_id,  foreign_key: :user_id
  belongs_to :reciver, class_name: "User", primary_key: :reciver_id, foreign_key: :user_id

  validates :content, presence: true
  validates :sender_id,  presence: :true
  validates :reciver_id, presence: :true
end
