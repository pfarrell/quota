class Quota < Sinatra::Application

  def is_number?(obj)
      obj.to_s == obj.to_i.to_s
  end

  get '/' do
    quote = Quote[rand(1..Quote.count)]
    haml :index, locals: {quote: quote}
  end

  get '/:id' do
    quote = Quote[params[:id].to_i] if is_number? params[:id]
    redirect "/" if quote.nil?
    haml :index, locals: {quote: quote}
  end

  get '/admin/quote/:id' do
    haml :'admin/quote', locals: {q: Quote[params[:id]]}
  end

  post '/admin/quote/:id' do
    q = params[:id].nil? ? Quote.new : Quote[params[:id].to_i]
    q.quote = params[:quote]
    q.author = Author[params[:author]]
    q.url = params[:url]
    q.save
    redirect '/'
  end
end
