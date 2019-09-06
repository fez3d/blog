class User
  include Mongoid::Document
  field :email, type: String
  field :name, type: String
  field :last_name, type: String
  field :mobile_phone, type: String
  field :work_place, type: String

  validates_presence_of :email, :name
  validates_uniqueness_of :email

  def full_name
    "#{name} #{last_name}"
  end
end
