require_relative 'query_type'

BluetrainSchema = GraphQL::Schema.define(query: QueryType)
