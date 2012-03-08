class Invoice < ActiveRecord::Base
  has_many :articles
  has_one :resume
  has_one :folio
end
