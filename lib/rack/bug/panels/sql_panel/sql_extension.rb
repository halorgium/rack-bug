if defined?(ActiveRecord)
  class Rack::Bug::SQLPanel
    class LogSubscriber < ActiveSupport::LogSubscriber
      def sql(event)
        payload = event.payload

        return if 'SCHEMA' == payload[:name]

        sql     = payload[:sql].squeeze(' ')
        Rack::Bug::SQLPanel.queries << Query.new(sql, event.duration / 1000.0, [])
      end
    end

    LogSubscriber.attach_to :active_record
  end
end
