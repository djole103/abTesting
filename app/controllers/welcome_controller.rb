class WelcomeController < ApplicationController
  def index
      @something = "hellooooooo"
      @something2 = "nooo wayyy"
 #     if cookie
 #           @outcome = @something if cookie['variation_id'] == 1
 #     else
 #           @outcome = @something2
 #     end
      @outcome = ab_test(:something_test, @something, @something2)
      finish(:something_test)
  end
end
