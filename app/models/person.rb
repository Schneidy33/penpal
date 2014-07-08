class Person < ActiveRecord::Base
  belongs_to :school
  has_many :reciever_id
  has_many :sender_id
end
