class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :sended_messages,  class_name: "Message", foreign_key: :sender_id
  has_many :recived_messages, class_name: "Message", foreign_key: :reciver_id
end
