class Message
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :from, :content, :subject

  def initialize(attributes = {})
    self.from = attributes[:from]
    self.content = attributes[:content]
    self.subject = attributes[:subject]
  end

  def send!
    ApplicationMailer.contact_form(self).deliver
  end

  def persisted?
    false
  end
end
