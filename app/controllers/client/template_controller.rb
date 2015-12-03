class Client::TemplateController < Client::BaseController
  def index
  end

  def preview
    render layout: 'switcheroo'
  end
end
