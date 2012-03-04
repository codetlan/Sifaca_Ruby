class Folio < ActiveRecord::Base
  belongs_to :client
  has_one :invoice
  has_one :client
end
