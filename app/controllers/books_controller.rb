class BooksController < ApplicationController
    def index
        @book = Book.all # instance variable
    end
    def show
        @book = Book.find(params[:id])
    end
    def new
        @book= Book.new
    end

    def edit
        @book = Book.find(params[:id])
    end
    
    def create
        @colglibrary = Colglibrary.find(params[:colglibrary_id])
        @book = @colglibrary.books.create(book_params)
        redirect_to colglibraries_path(@colglibrary)
    end

    def update
        @book = Author.find(params[:id])
       
        if @author.update(author_params)
          redirect_to @author
        else
          render 'edit'
        end
    end

    def destroy
        @colglibrary =Colglibrary.find(params[:colglibrary_id])
        @book =@colglibrary.books.find(params[:id])
        @book.destroy
        redirect_to colglibraries_path(@colglibrary)
    end
   
    private
      def book_params
        params.require(:book).permit(:title, :published_at, :language)
      end
end
