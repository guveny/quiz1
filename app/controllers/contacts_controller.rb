class ContactsController < ApplicationController
            def new
                        @contact = Contact.new
            end

            def create
                        @contact = Contact.new(contact_params)
                        if @contact.valid? 
                                    redirect_to root_path
                        else
                                    render :new, status: :unprocessable_entity
                        end
                        

            end


private

def contact_params
            params.require(:contact).permit(:fname, :lname, :pnumber, :email)
end
end
