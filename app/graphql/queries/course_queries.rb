module Queries
  module CourseQueries
    class All < BaseQuery
      type [Types::CourseType], null: false
      description 'Query all Courses'

      def resolve
        Course.all
      end
    end
  end
end
