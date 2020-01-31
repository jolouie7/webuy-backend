class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :bio, :email
  # attributes :id
end
