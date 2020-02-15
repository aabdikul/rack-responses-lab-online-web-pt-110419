class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.strftime("%I:%M").to_i
    resp.write "#{t}\n"

    if t < 12
      resp.write "Morning"
    else
      resp.write "Afternoon"
    end
    resp.finish
  end

end
