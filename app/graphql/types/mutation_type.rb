# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
   field :sign_in, mutation: Mutations::SignIn
   field :sign_up, mutation: Mutations::SignUp
  end
end
