class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species
  # we need to be specific when using the FASTJsonapi gem
  # we must remember to include the attributes that we want. 
end
