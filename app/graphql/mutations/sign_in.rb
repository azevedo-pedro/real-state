module Mutations
  class SignIn < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true

    field :token, String, null: true
    field :user, Types::UserType, null: true
    field :errors, [ String ], null: true

    def resolve(email:, password:)
      user = User.find_by(email: email)

      if user&.authenticate(password)
        token = JWT.encode({
          user_id: user.id, exp: 24.hours.from_now.to_i
        }, Rails.application.secret_key_base)
        {
          user: user,
          token: token,
          error: []
        }
      else
        {
          user: nil,
          token: nil,
          error: [ "Invalid email or password", user.errors.full_message ]
        }
      end
    end
  end
end
