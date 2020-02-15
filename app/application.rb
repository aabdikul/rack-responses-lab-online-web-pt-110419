class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.strftime("%I:%M")

    if t > 12:00
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end

  end

end
