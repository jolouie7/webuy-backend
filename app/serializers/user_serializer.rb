class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :name, :bio, :email
end
