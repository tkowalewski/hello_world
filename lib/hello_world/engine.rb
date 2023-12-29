module HelloWorld
  class Engine < ::Rails::Engine
    isolate_namespace HelloWorld

    initializer 'hello_world-engine.importmap', before: 'importmap' do |app|
      app.config.importmap.paths += [Engine.root.join('config/importmap.rb')]
    end

    initializer "hello_world-engine.assets" do |app|
      app.config.assets.precompile += %w[hello_world_manifest.js]
      app.config.assets.paths << Engine.root.join('app', 'components')
    end
  end
end
