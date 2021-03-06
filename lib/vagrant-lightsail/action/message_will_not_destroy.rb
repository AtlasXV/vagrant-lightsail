module VagrantPlugins
  module Lightsail
    module Action
      class MessageWillNotDestroy
        def initialize(app, _)
          @app = app
        end

        def call(env)
          env[:ui].info I18n.t 'vagrant_lightsail.will_not_destroy', name: env[:machine].name
          @app.call(env)
        end
      end
    end
  end
end
