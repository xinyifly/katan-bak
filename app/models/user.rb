class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :received_votes, class_name: 'Vote', foreign_key: 'candidate'

  def to_s
    email
  end

  def score
    self.received_votes.count
  end
end
