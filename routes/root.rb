class Quota < Sinatra::Application

  def is_number?(obj)
      obj.to_s == obj.to_i.to_s
  end

  get '/' do
    quote = Quote.order(Sequel.lit('RANDOM()')).limit(1).first
    haml :index, locals: {quote: quote}
  end

  get '/:id' do
    quote = Quote[params[:id].to_i] if is_number? params[:id]
    redirect "/" if quote.nil?
    haml :index, locals: {quote: quote}
  end
end
