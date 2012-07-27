# This is the model for suggestions
require 'couchrest_model'

class Suggestion < CouchRest::Model::Base
  property :FDLclass, String
  property :appVersion, String
  property :page, String
  property :block, String
  property :suggestion, String
  property :labels, [String]
  property :testdata, TrueClass, :default => false
  timestamps!
end
