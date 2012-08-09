# This is the model for suggestions

# this is actually optional
#require 'couchrest_model'

class Suggestion < CouchRest::Model::Base
  property :FDLclass, String
  property :appVersion, String
  property :page, String
  property :block, String
  property :suggestion, String
  property :labels, [String]
  property :trackingID, String
  property :testdata, TrueClass, :default => false
  timestamps! # use created_at and updated_at fields
end
