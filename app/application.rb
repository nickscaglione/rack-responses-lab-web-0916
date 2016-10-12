class Application

  def call(env)
    resp = Rack::Response.new #what's this?

    twenty_four_hour_time = Time.now.hour

    if twenty_four_hour_time >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish #what's this?

  end

end
