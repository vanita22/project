class Specialitie < ApplicationRecord
  belongs_to :professional, class_name: "User"
  belongs_to :sub_service
end
