class Reserve < ApplicationRecord
  belongs_to :user
  belongs_to :content
end
