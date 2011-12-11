# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-bug}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Bryan Helmkamp}]
  s.date = %q{2011-12-10}
  s.email = %q{bryan@brynary.com}
  s.extra_rdoc_files = [
    %q{README.md},
    %q{MIT-LICENSE.txt}
  ]
  s.files = [
    %q{.gitignore},
    %q{History.txt},
    %q{MIT-LICENSE.txt},
    %q{README.md},
    %q{Rakefile},
    %q{Thorfile},
    %q{lib/rack/bug.rb},
    %q{lib/rack/bug/autoloading.rb},
    %q{lib/rack/bug/filtered_backtrace.rb},
    %q{lib/rack/bug/options.rb},
    %q{lib/rack/bug/panel.rb},
    %q{lib/rack/bug/panel_app.rb},
    %q{lib/rack/bug/panels/active_record_panel.rb},
    %q{lib/rack/bug/panels/active_record_panel/activerecord_extensions.rb},
    %q{lib/rack/bug/panels/cache_panel.rb},
    %q{lib/rack/bug/panels/cache_panel/dalli_extension.rb},
    %q{lib/rack/bug/panels/cache_panel/memcache_extension.rb},
    %q{lib/rack/bug/panels/cache_panel/panel_app.rb},
    %q{lib/rack/bug/panels/cache_panel/stats.rb},
    %q{lib/rack/bug/panels/log_panel.rb},
    %q{lib/rack/bug/panels/log_panel/logger_extension.rb},
    %q{lib/rack/bug/panels/memory_panel.rb},
    %q{lib/rack/bug/panels/mongo_panel.rb},
    %q{lib/rack/bug/panels/mongo_panel/mongo_extension.rb},
    %q{lib/rack/bug/panels/mongo_panel/stats.rb},
    %q{lib/rack/bug/panels/rails_info_panel.rb},
    %q{lib/rack/bug/panels/redis_panel.rb},
    %q{lib/rack/bug/panels/redis_panel/redis_extension.rb},
    %q{lib/rack/bug/panels/redis_panel/stats.rb},
    %q{lib/rack/bug/panels/request_variables_panel.rb},
    %q{lib/rack/bug/panels/sphinx_panel.rb},
    %q{lib/rack/bug/panels/sphinx_panel/sphinx_extension.rb},
    %q{lib/rack/bug/panels/sphinx_panel/stats.rb},
    %q{lib/rack/bug/panels/sql_panel.rb},
    %q{lib/rack/bug/panels/sql_panel/panel_app.rb},
    %q{lib/rack/bug/panels/sql_panel/query.rb},
    %q{lib/rack/bug/panels/sql_panel/sql_extension.rb},
    %q{lib/rack/bug/panels/templates_panel.rb},
    %q{lib/rack/bug/panels/templates_panel/actionview_extension.rb},
    %q{lib/rack/bug/panels/templates_panel/rendering.rb},
    %q{lib/rack/bug/panels/templates_panel/trace.rb},
    %q{lib/rack/bug/panels/timer_panel.rb},
    %q{lib/rack/bug/params_signature.rb},
    %q{lib/rack/bug/public/__rack_bug__/bookmarklet.html},
    %q{lib/rack/bug/public/__rack_bug__/bookmarklet.js},
    %q{lib/rack/bug/public/__rack_bug__/bug.css},
    %q{lib/rack/bug/public/__rack_bug__/bug.js},
    %q{lib/rack/bug/public/__rack_bug__/jquery-1.3.2.js},
    %q{lib/rack/bug/public/__rack_bug__/jquery.tablesorter.min.js},
    %q{lib/rack/bug/public/__rack_bug__/spinner.gif},
    %q{lib/rack/bug/rack_static_bug_avoider.rb},
    %q{lib/rack/bug/redirect_interceptor.rb},
    %q{lib/rack/bug/render.rb},
    %q{lib/rack/bug/toolbar.rb},
    %q{lib/rack/bug/views/error.html.erb},
    %q{lib/rack/bug/views/panels/active_record.html.erb},
    %q{lib/rack/bug/views/panels/cache.html.erb},
    %q{lib/rack/bug/views/panels/execute_sql.html.erb},
    %q{lib/rack/bug/views/panels/explain_sql.html.erb},
    %q{lib/rack/bug/views/panels/log.html.erb},
    %q{lib/rack/bug/views/panels/mongo.html.erb},
    %q{lib/rack/bug/views/panels/profile_sql.html.erb},
    %q{lib/rack/bug/views/panels/rails_info.html.erb},
    %q{lib/rack/bug/views/panels/redis.html.erb},
    %q{lib/rack/bug/views/panels/request_variables.html.erb},
    %q{lib/rack/bug/views/panels/sphinx.html.erb},
    %q{lib/rack/bug/views/panels/sql.html.erb},
    %q{lib/rack/bug/views/panels/templates.html.erb},
    %q{lib/rack/bug/views/panels/timer.html.erb},
    %q{lib/rack/bug/views/panels/view_cache.html.erb},
    %q{lib/rack/bug/views/redirect.html.erb},
    %q{lib/rack/bug/views/toolbar.html.erb},
    %q{rack-bug.gemspec},
    %q{spec/custom_matchers.rb},
    %q{spec/fixtures/config.ru},
    %q{spec/fixtures/dummy_panel.rb},
    %q{spec/fixtures/sample_app.rb},
    %q{spec/rack/bug/panels/active_record_panel_spec.rb},
    %q{spec/rack/bug/panels/cache_panel_spec.rb},
    %q{spec/rack/bug/panels/log_panel_spec.rb},
    %q{spec/rack/bug/panels/memory_panel_spec.rb},
    %q{spec/rack/bug/panels/mongo_panel_spec.rb},
    %q{spec/rack/bug/panels/rails_info_panel_spec.rb},
    %q{spec/rack/bug/panels/redis_panel_spec.rb},
    %q{spec/rack/bug/panels/sql_panel_spec.rb},
    %q{spec/rack/bug/panels/templates_panel_spec.rb},
    %q{spec/rack/bug/panels/timer_panel_spec.rb},
    %q{spec/rack/bug_spec.rb},
    %q{spec/rcov.opts},
    %q{spec/spec.opts},
    %q{spec/spec_helper.rb}
  ]
  s.homepage = %q{http://github.com/brynary/rack-bug}
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{rack-bug}
  s.rubygems_version = %q{1.8.7}
  s.summary = %q{Debugging toolbar for Rack applications implemented as middleware}
  s.test_files = [
    %q{spec/custom_matchers.rb},
    %q{spec/fixtures/dummy_panel.rb},
    %q{spec/fixtures/sample_app.rb},
    %q{spec/rack/bug/panels/active_record_panel_spec.rb},
    %q{spec/rack/bug/panels/cache_panel_spec.rb},
    %q{spec/rack/bug/panels/log_panel_spec.rb},
    %q{spec/rack/bug/panels/memory_panel_spec.rb},
    %q{spec/rack/bug/panels/mongo_panel_spec.rb},
    %q{spec/rack/bug/panels/rails_info_panel_spec.rb},
    %q{spec/rack/bug/panels/redis_panel_spec.rb},
    %q{spec/rack/bug/panels/sql_panel_spec.rb},
    %q{spec/rack/bug/panels/templates_panel_spec.rb},
    %q{spec/rack/bug/panels/timer_panel_spec.rb},
    %q{spec/rack/bug_spec.rb},
    %q{spec/spec_helper.rb}
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.0"])
      s.add_development_dependency(%q<webrat>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<git>, [">= 0"])
    else
      s.add_dependency(%q<rack>, [">= 1.0"])
      s.add_dependency(%q<webrat>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<git>, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.0"])
    s.add_dependency(%q<webrat>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<git>, [">= 0"])
  end
end
