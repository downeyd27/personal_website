class  Project < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :url,  presence: true, length: { maximum: 50 }, uniqueness: true
  validates :url,  format: { with: /http?:\/\/[\S]+/, message: "only http urls allowed." }
end
