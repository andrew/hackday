class Hack
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  field :authors, :type => String
  field :url, :type => String

  validates_presence_of :name, :description, :authors
end
