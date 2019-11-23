class Order < ApplicationRecord
  enum pay_type: {
  "Cheque" => 0,
  "Credit Card" => 1,
  "Purchase Order" => 2
}

has_many :line_items, dependent: :destroy

end
