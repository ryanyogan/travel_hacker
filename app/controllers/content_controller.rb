class ContentController < ApplicationController
  before_filter :authenticate_user!

  def standard
    authorize! :view, :standard, :message => 'Access limited to Standard subscribers.'
  end

  def plus
    authorize! :view, :plus, :message => 'Access limited to Plus Subscribers.'
  end
end
