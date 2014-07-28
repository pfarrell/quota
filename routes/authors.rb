class Quota < Sinatra::Application

  get '/admin/authors' do
    aut
    quote = Quote[rand(1..Quote.count)]
    respond_to do |wants|
      wants.html { haml :index, locals: {quote: quote} } 
      wants.json { quote.to_json }
    end
  end

  get 'admin/authors' do
    haml :'admin/author'
  end
  
  post 'admin/authors' do
  end
end
