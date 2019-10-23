class ColglibrariesController < ApplicationController
    def index
        @colglibraries = Colglibrary.all
    end
      
    def show
        @colglibrary = Colglibrary.find(params[:id])
    end

    def new
        @colglibrary = Colglibrary.new
    end
    
    def edit
        @colglibrary = Colglibrary.find(params[:id])
    end
    
    def create
        @colglibrary = Colglibrary.new(colglibrary_params)
       
        if @colglibrary.save
            redirect_to @colglibrary
        else
            render 'new'
        end
    end
    def update
        @colglibrary = Colglibrary.find(params[:id])
       
        if @colglibrary.update(colglibrary_params)
          redirect_to @colglibrary
        else
          render 'edit'
        end
    end
    def destroy
        @colglibrary = Colglibrary.find(params[:id])
        @colglibrary.destroy
       
        redirect_to colglibraries_path
    end
       
    private
    def colglibrary_params
        params.require(:colglibrary).permit(:name, :opening_time, :closing_time)
    end
end

