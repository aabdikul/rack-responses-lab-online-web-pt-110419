class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.strftime("%I:%M %p") 

    if t >  12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

  end

end
