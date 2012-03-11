class Parser
  attr_reader :url, :reader

  def initialize(url, reader)
    @reader = reader
    @url    = clear_url url
  end

  def clear_url url
    @reader.url_parts.each do |str|
      url = url.gsub str, ""
    end

    if url.starts_with? "/"
      url[0] = ""
    end

    return @reader.domain + url
  end

  def parse
    doc = Nokogiri::HTML open @url
    # c = doc.css @reader.css_path
    # @html = "<table>#{c.inner_html}</table>".html_safe
    @html = @reader.format(doc.css @reader.css_path).html_safe
  end
end
