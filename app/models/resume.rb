class Resume < ActiveRecord::Base
  belongs_to :invoice
  #has_one :invoice
end
