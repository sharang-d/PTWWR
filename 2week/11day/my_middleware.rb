class My_Middleware
  def initialize(app)
    @app = app
  end

  def call(env)
    env['PATH_INFO'] != '/' ?  [404, {'Content-Type' => 'text/plain'}, ['Not OK!']] : @app.call(env)
  end
end
