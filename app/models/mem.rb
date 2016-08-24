class Mem < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  after_validation(on: :create) do
    self.active = false
  end

  scope :active, -> {where active: true}
  scope :inactive, -> {where active: false}
end
