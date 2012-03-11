class Reader
  attr_reader :domain, :url_parts, :css_path, :wrapper

  def format content
    content
  end
end