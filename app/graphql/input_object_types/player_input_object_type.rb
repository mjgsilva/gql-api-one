module InputObjectTypes
  class PlayerInputObjectType < Types::BaseInputObject
    argument :name, String, '', required: true
  end
end

