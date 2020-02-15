class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.strftime("%I:%M").to_i

    if t < 12
      resp.write "Good Morning!"
    elsif
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
