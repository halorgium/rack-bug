module Rack
  class Bug
    class TemplatesPanel

      class Trace

        def start(template_name, time)
          rendering = Rendering.new(template_name)
          rendering.start_time = time
          @current.add(rendering)
          @current = rendering
        end

        def finished(template_name, time)
          @current.end_time = time
          @current = @current.parent
        end

        def initialize
          @current = root
        end

        def total_time
          root.child_time
        end

        def root
          @root ||= Rendering.new("root")
        end
      end

    end
  end
end
