# == Schema Information
#
# Table name: appointments
#
#  id           :bigint           not null, primary key
#  user_id      :bigint           not null
#  title        :string
#  description  :text
#  professional :string
#  date         :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Appointment < ApplicationRecord
  belongs_to :user
  validates :user_id, :title, :description, :professional, :date, presence: true
  has_many :exams, dependent: :destroy
end
