# frozen_string_literal: true

# module Types
#  class QueryType < Types::BaseObject
# Add root-level fields here.
# They will be entry points for queries on your schema.
#    field :players, resolver: Queries::PlayerQueries
#  end
# end

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :notifications, resolver: Queries::NotificationQueries::All
    field :courses, resolver: Queries::CourseQueries::All

    field :user, resolver: Queries::UserQueries::Get
    field :users, resolver: Queries::UserQueries::All
  end
end
