class User < ApplicationRecord
  ROLE_SUPER_MANAGER = 1
  ROLE_MANAGER = 2
  ROLE_GOVERMENT = 3
  ROLE_ASSOCIATION = 4
  ROLE_AGENT = 5
  ROLE_COMPANY = 6

  has_one :company


  def self.authenticate(account, password)
    User.find_by account: account, password: password
  end

end
