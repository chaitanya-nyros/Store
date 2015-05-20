class ProductMailer < ActionMailer::Base
  default from: "kinnuskiran@gmail.com"

  def product_confirm
  	attachments["Free-Desktop-Wallpaper-Full-HD-Motivational-Quote.jpg"] = File.read("/home/nyros/Downloads/Free-Desktop-Wallpaper-Full-HD-Motivational-Quote.jpg")
  	mail(:to => "prabhuchaitanyavarma@gmail.com", :subject => "successfully registerd")
  end

end
