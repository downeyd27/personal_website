class  Project < ActiveRecord::Base
  validates_presence_of :name, :description, :purpose, :technology, :url, :image

  validates :name, length: { maximum: 50 },
                   uniqueness: true

  validates :url, length: { maximum: 50 },
                  uniqueness: true,
                  format: {
                    with: /http?:\/\/[\S]+/,
                    message: "only http urls allowed."
                  }

  validates :description, length: { maximum: 140 }

  validates :purpose, length: { maximum: 140 }

  validates :technology, length: { maximum: 140 }
end
