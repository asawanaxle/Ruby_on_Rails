class Kitchen < ApplicationRecord
    validates :Item_Title, presence: true, on: :create, length: {minimum: 3, maximum: 25},  numericality: false, uniqueness: true,  presence: { message: "Cannot be empty" }
    validates :Units, presence: true,  numericality: true, on: :create
end