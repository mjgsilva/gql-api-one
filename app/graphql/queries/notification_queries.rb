module Queries
  module NotificationQueries
    class All < BaseQuery
      type [Types::NotificationType], null: false
      description 'Query all Notifications'

      def resolve
        Notification.all
      end
    end
  end
end
