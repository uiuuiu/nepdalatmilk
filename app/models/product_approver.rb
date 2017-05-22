class ProductApprover < ApplicationRecord
  belongs_to :order
  belongs_to :employee
  belongs_to :approval_type
end
