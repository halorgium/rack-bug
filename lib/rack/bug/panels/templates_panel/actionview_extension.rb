if defined?(ActionView)
  class Rack::Bug::TemplatesPanel
    class LogSubscriber < ActiveSupport::LogSubscriber
      def render_template(event)
        template = from_rails_root(event.payload[:identifier])
        layout = " within #{from_rails_root(event.payload[:layout])}" if event.payload[:layout]

        message = "#{template}#{layout}"

        Rack::Bug::TemplatesPanel.template_trace.start(message, event.time)
        Rack::Bug::TemplatesPanel.template_trace.finished(message, event.end)
      end
      alias :render_partial :render_template
      alias :render_collection :render_template

    protected

      def from_rails_root(string)
        string.sub("#{Rails.root}/", "").sub(/^app\/views\//, "")
      end
    end

    LogSubscriber.attach_to :action_view
  end
end
