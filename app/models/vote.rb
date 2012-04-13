class Vote
  include Mongoid::Document
  field :email, :type => String

  belongs_to :hack
end
