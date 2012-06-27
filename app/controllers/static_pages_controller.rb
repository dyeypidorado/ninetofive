class StaticPagesController < ApplicationController
  def show
    @homepage = StaticPage.first
  end
end
