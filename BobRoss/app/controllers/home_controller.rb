class HomeController < ApplicationController
  def page
    @painting = Painting.all
  end
end
