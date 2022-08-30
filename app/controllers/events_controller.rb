class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    set_event
  end

  def new
    @event = Event.new
  end

  def scrape
    busca = "rock"
    url = "https://www.sympla.com.br/eventos/sao-paulo-sp?s=#{busca}&tab=eventos"

    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)

    html_doc.search(".CustomGridstyle__CustomGridCardType").each do |element|
      puts element.text.strip
      puts element.attribute("href").value
    end
  end

  private

  def set_place
    @event = Event.find(params[:id])
  end

  def place_params
    params.require(:events).permit(:name, :address, :description, :price)
  end
end
