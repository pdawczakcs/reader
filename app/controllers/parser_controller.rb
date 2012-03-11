class ParserController < ApplicationController
  def index
  end

  def parse
    @html = Parser.new(params[:url], Bodypak.new).parse
    respond_to do |format|
      format.html
      format.js
    end
  end
end
