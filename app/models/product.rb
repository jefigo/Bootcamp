class Product < ActiveRecord::Base
  before_save :set_defaults

  has_many :variants

  belongs_to :category

  attr_accessible :active, :description, :name, :price, :category_id

  validates :name, :category_id, presence: true

  def set_defaults
    self.active ||= false
  end
end
