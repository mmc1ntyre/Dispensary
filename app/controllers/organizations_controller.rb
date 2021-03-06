class OrganizationsController < ApplicationController
  respond_to :html

  expose(:organization) 

  def create
    if organization.save
      flash[:notice] = 'Successfully created organization'
      respond_with(organization)
    else
      render :new
    end
  end
end
