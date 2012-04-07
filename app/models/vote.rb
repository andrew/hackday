class Vote
  include Mongoid::Document
  field :email, :type => String
  field :hack_id, :type => String
end
