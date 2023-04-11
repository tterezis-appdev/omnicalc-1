class ApplicationController < ActionController::Base
  def
    blank_square_form
    render ({:template => "calculation_templates/square_form.html.erb"})
  end

  def
    blank_square_root_form
    render ({:template => "calculation_templates/square_root_form.html.erb"})
  end

  def
    blank_payment_form
    render ({:template => "calculation_templates/payment_form.html.erb"})
  end

  def
    blank_random_form
    render ({:template => "calculation_templates/random_form.html.erb"})
  end

  def
    calculate_square
    #params={"elephant"=>"42"}
    @num=params.fetch("elephant").to_f
    
    @square_of_num= @num**2

    render ({:template => "calculation_templates/square_results.html.erb"})
  end

  
  def
    calculate_square_root
    #params={"leopard"=>"5"}
    @num=params.fetch("leopard").to_f
    
    @square_root_of_num= Math.sqrt(@num)

    render ({:template => "calculation_templates/square_root_results.html.erb"})
  end

  def
    calculate_payment
    #params={"leopard"=>"5"}
    @APR=params.fetch("num1").to_f
    @num_years=params.fetch("num2").to_f
    @principal=params.fetch("num3").to_f
   

    @payment = (@principal * (@APR/100 / @num_years)).round(2)
    @numerator = @principal*(@APR/100)*((1+@APR/100)**@num_years
    @denominator = (1+@APR/100)**@num_years)-1
    @monthly_pay = (@numerator/@denominator).round(2)

    render ({:template => "calculation_templates/payment_results.html.erb"})
  end

  def
    calculate_random
    #params={"leopard"=>"5"}
    @lower=params.fetch("minimum").to_f
    @upper=params.fetch("maximum").to_f

    @random_num= rand(@upper - @lower + 1) + @lower


    render ({:template => "calculation_templates/random_results.html.erb"})
  end
end
