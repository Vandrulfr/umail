
class ValidaNome < ActiveModel::Validator

  def validate(record)
    if record.nome.split.length<2
      record.errors[:base] << "Sem sobrenome."
    end
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :current_password
  validates_uniqueness_of :matricula
  validates_with ValidaNome
end

