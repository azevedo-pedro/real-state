module Mutations
  class SignUp < BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true
    argument :password_confirmation, String, required: true

    field :token, String, null: true
    field :user, Types::UserType, null: true
    field :errors, [ String ], null: true

    def resolve(email:, password:, password_confirmation:)
      user = User.new(
        email: email,
        password: password,
        password_confirmation: password_confirmation
      )

      if user.save
        token = JWT.encode(
          { user_id: user.id, exp: 24.hours.from_now.to_i },
          Rails.application.secret_key_base
        )
        {
          user: user,
          token: token,
          errors: []
        }
      else
        {
          user: nil,
          token: nil,
          errors: user.errors.full_message
        }
      end
    end
  end
end
