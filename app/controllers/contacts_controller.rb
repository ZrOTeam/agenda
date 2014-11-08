class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index

    unless params[:text].blank?

      s = "%#{params[:text]}%"

      @contacts = Contact.where("last_name LIKE ? OR first_name LIKE ? OR email LIKE ?", s, s, s)


      data = []
      @contacts.each do |c|
        data << {id: c.o_id, fullname: c.fullname}
      end

    end
    
    render text:data.to_json
  end

  def show
    respond_with(@contact)
  end

  def new
    @contact = Contact.new
    respond_with(@contact)
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)

    @contact.save

    redirect_to root_path
  end

  def update
    @contact.update(contact_params)
    redirect_to contact_edit_path(@contact.id)
  end

  def destroy
    @contact.destroy
    respond_with(@contact)
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:group_id, :first_name, :last_name, :birthday, :email, :celphone, :phone, :address, :comments)
    end
end
