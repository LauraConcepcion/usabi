class NotifiersController < ApplicationController
  def my_mailer
    from_name = params[:comment][:name]
    from_email = params[:comment][:email]
    the_subject = params[:comment][:subject]
    message = params[:comment][:message]
    begin
      #First check if the senders email is valid
      if from_email =~ /^[a-zA-Z0-9._%-]+@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}$/
        #put all the contents of my form in a hash
        mail_info = {"from_name" => from_name, "from_email" => from_email, "message" => message, "the_subject" => the_subject}
        #Call the Notifier class and send the email
        Notifier.deliver_multipart_alternative(mail_info)
        #Display a message notifying the sender that his email was delivered.
        flash[:notice] = 'Your message was successfully delivered.'
        #Then redirect to index or any page you want with the message
        redirect_to(:action => 'index')
      else
        #if the senders email address is not valid
        #display a warning and redirect to any action you want
        flash[:warning] = 'El camppo email no es correcto, por favor revíselo'
        redirect_to(:action => 'index')
      end
    rescue
    #if everything fails, display a warning and the exception
    #Maybe not always advisable if your app is public
    #But good for debugging, especially if action mailer is setup wrong
    flash[:warning] = "No se ha podido enviar el mensaje. #$!. Por favor, inténtelo más tarde"
    redirect_to(:action => 'index')
    end
  end
 # def send_contact_form 
    # if request.post?
      # Mailer::deliver_message(params[:author])
      # redirect_to :action => 'contact'
      # flash[:notice] = "Thanks for your message!"
    # end
  # end
end
  