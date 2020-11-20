class HomeController < ApplicationController
  def home
  end

  def contact
  end

  def bookings
  end

  def my_bookings
  end

  def football
  end

  def formula1
  end

  def amfootball
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

    redirect_to root_path
  end
end
