class PagesController < ApplicationController
  # Skip Devise authentication for certain pages
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end
