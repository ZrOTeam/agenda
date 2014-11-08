class HomeController < ApplicationController
  def index

    @contacts = Contact.all
    @contact = Contact.new


  end

  def contact
    @contacts = Contact.all
    @contact = Contact.find(params[:id])
    
    render :index
  end
end
