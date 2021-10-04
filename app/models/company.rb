class Company < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end
