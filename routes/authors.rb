class Quota < Sinatra::Application

  get '/admin/authors' do
    quote = Quote[rand(1..Quote.count)]
    respond_to do |wants|
      wants.html { haml :index, locals: {quote: quote} } 
      wants.json { quote.to_json }
    end
  end

  get 'admin/authors' do
    haml :'admin/author'
  end

  get '/admin/author/:id' do
    haml :'admin/author', locals: {a: Author[params[:id]]}
  end
  
  post '/admin/author/:id' do
    author = Author[params[:id]]
    author.name = params[:name]
    author.image_url = params[:image_url]
    author.save
    redirect(url_for('/'))
  end
end
