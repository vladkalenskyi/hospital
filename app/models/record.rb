class Record < ApplicationRecord
  belongs_to :patients
  belongs_to :doctor
end
