class ContainersController < ApplicationController
  def index
    redirect_to container_path(hash)
  end

  def show

  end

  private
  def hash
    SecureRandom.hex[0..9]
  end
end
