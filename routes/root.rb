class Quota < Sinatra::Application

  def is_number?(obj)
      obj.to_s == obj.to_i.to_s
  end

  get '/', provides: [:html, :json] do
    quote = Quote.order(Sequel.lit('RANDOM()')).limit(1).first
    respond_with do |wants|
      wants.html { haml :index, locals: {quote: quote} }
      wants.json { quote.to_json }
    end
  end

  get '/:id' do
    quote = Quote[params[:id].to_i] if is_number? params[:id]
    redirect "/" if quote.nil?
    respond_with do |wants|
      wants.html { haml :index, locals: {quote: quote} }
      wants.json { quote.to_json }
    end
  end
end
