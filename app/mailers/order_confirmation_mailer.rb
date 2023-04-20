class OrderConfirmationMailer < ApplicationMailer
  def order_confirmation

  	@user = params[:user]
      #@user_type = AccountBlock::AccountType.find_by(id: @account.user_type)&.name
      @host = Rails.env.development? ? 'http://localhost:3000' : params[:host]
      mail(
          to: @user.email,
          from: 'info.nxzsound@gmail.com',
          subject: 'Welcome Email') do |format|
        format.html { render 'order_confirmation' }
      end
  end 
end
