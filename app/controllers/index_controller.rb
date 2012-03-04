class IndexController < ApplicationController
  before_filter :authenticate_client!, :except => [:index]

  def index
  end
  def dashboard

  end
end
