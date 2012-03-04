class Invoice < ActiveRecord::Base
  belongs_to :client
  has_one :folio
  has_many :articles
  has_one :resume
  has_one :client
end
