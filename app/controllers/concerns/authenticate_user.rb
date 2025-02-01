module AuthenticateUser
  extend ActiveSupport::Concern

  def current_user
    return nil unless token

    decoded_token = JWT.decode(
      token,
      Rails.application.secret_key_base,
      true,
      { algorithm: "HS256" }
    )

    User.find_by(id: decoded_token[0]["user_id"])
  rescue JWT::DecodeError
    nil
  end

  private

  def token
    request.headers["Authorization"]&.split(" ")&.last
  end
end
