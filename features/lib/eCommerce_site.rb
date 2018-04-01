require_relative 'pages/homepage'

module ECommerceSite

  def ecom_homepage
    EcomHomepage.new
  end

  def ecom_my_account
    EcomMyAccount.new
  end

  def ten_min_mail
    TenMinMail.new
  end

end
