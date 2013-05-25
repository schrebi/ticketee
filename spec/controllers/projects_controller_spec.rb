require 'spec_helper'

describe ProjectsController do

  it "displays an error for a missing project" do
    get :show, :id => "not-here"
    response.should redirect_to(projects_path)
    message = "The project you were looking were could not be found."
    flash[:alert].should eql(message)
  end
end
