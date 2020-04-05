class Application

  def call(env)
    resp = Rack::Response.new
    resp.write game
    resp.finish
  end
  
  def game
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
 
    if num_1==num_2 && num_2==num_3
      puts "You Win"
    else
     puts "You Lose"
    end
  end

end
