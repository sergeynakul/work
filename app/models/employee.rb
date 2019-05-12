require 'elasticsearch/model'

class Employee < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  belongs_to :department
end

Employee.import force: true
