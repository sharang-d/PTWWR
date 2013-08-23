class MyRequest
  def call(env)
    req = Rack::Request.new(env)
    text = req.params['text']
    Rack::Response.new.finish do |res|
      res['Content-Type'] = 'text/plain'
      if text
        res.status = 200
        str = "#{text} when reversed becomes #{text.reverse}\n"
      else
        res.status = 400
        str = "Invalid parameter\n"
      end
      res.write str
    end
  end
end

run MyRequest.new
