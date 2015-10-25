class Library < Sinatra::Base
  # index
  get '/books' do
    @books = Book.all
    erb(:"books/index")
  end

  # new
  get '/books/new' do
    @book = Book.new
    erb(:"books/new")
  end

  # create
  post '/books' do
    @book = Book.new(params[:book])
    if @book.save
      redirect("/books/#{@book.id}")
    else
      erb(:"books/new")
    end
  end

  # show
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb(:"books/show")
  end

  # edit
  get '/books/:id/edit' do
    @book = Book.find(params[:id])
    erb(:"books/edit")
  end

  # update
  post '/books/:id/update' do
    @book = Book.find(params[:id])
    if @book.update(params[:book])
      redirect("/books")
    else
      erb(:"books/new")
    end
  end

  # delete
  post '/books/:id/delete' do
    @book = Book.find(params[:id])
    if @book.destroy
      redirect("/books")
    else
      redirect("/books/#{@book.id}")
    end
  end

end