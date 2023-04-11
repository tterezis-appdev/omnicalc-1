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
    @num1=params.fetch("num1").to_f
    @num2=params.fetch("leopard").to_f
    @num3=params.fetch("num3").to_f

    @rate=@num1/12
    # @payment=@num3*(rate)

    render ({:template => "calculation_templates/payment_results.html.erb"})
  end
end
