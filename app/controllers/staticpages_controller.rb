class StaticpagesController < ApplicationController
  def home
     @collaborator = Collaborator.new
  end
end
