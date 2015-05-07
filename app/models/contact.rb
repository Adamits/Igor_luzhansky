class Contact < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    {
      :subject => "Message from igorluzhansky.com",
      :to => "your_email@example.org",
      :from => %("#{name}" <#{email}>)
    }
  end
end
