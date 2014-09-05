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
  
  post 'authors/new' do
    author = Author.new
    author.name = params[:name]
    author.image = params[:image]
    author.save!
  end
end
