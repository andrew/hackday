class Hack
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :authors, :type => String
  field :url, :type => String

  validates_presence_of :name, :description, :authors
  
  has_many :votes
  
  def to_s
    name
  end
end
