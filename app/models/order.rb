class Order < ApplicationRecord
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys
  enum pay_type: {
  "Cheque" => 0,
  "Credit Card" => 1,
  "Purchase Order" => 2
}

has_many :line_items, dependent: :destroy

end
