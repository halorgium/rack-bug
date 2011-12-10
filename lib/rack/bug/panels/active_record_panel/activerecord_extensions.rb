if defined?(ActiveRecord)
  ActiveRecord::Base.class_eval do
    after_initialize do
      Rack::Bug::ActiveRecordPanel.record(self.class.base_class.name)
    end
  end
end
