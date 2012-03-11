class Bodypak < Reader
  def initialize
    @domain     = "http://www.bodypak.pl/"
    @url_parts  = %w(http:// www. bodypak.pl/)
    @css_path   = "#more_info_block table#product_composition"
  end

  def format content
    "<style type='text/css'> " +
    ".std td.col0 { font-weight: bold;
      text-align: right;}" +
    ".std tbody td, .std tfoot td { border-top: 1px solid #DBDFED; } " +
    ".even { background: #F6F6F6; } " +
    ".std td, .std th { padding: 5px; } " + 
    "</style> " +
    # "<table>#{content}</table>"
    "#{content}"
  end
end