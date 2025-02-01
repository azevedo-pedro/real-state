# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items,
    [ Types::ItemType ],
    null: false,
    description: "Returns a list of items in the martian library"

    def items
      Item.all
    end
  end
end
