class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,:email,:first_name,:last_name,
  :first_name_kana,:last_name_kana,:gender,:birthday,:phone_number,presence: true

  validates :nickname,:email,uniqueness: true

  validates :last_name,:first_name,format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/,message: 'を全角で入力してください'}
  validates :last_name_kana,:first_name_kana, format: { with: /\A^([ァ-ン]|ー)+$\z/,message: 'を全角カナで入力してください'}
  validates :phone_number,format: {with:  /\A\d{10}$|^\d{11}\z/, message: 'をハイフンなしで10桁or11桁で入力してください'}

end
