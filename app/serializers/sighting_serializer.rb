class SightingSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :bird
  belongs_to :location
  # or include the above code to do relationships
  attributes :created_at #, :bird, :location
  # this can also include other related objects
end
