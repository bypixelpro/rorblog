class PagesController < ApplicationController

    #A la Rails
    before_action :set_page, only: [:show, :edit, :update, :destroy]

    def index
        @pages = Page.all
    end

    #Probamos a hacer un show de lo que entre por la url
    def show
        @page = Page.find(params[:id])
        #como aun no tenemos una vista, le paso el texto
     #render plain: @page.title
    end

    def new
        @page = Page.new
    end

    def create
        #estabelcemos los permisos de entrada
        @page = Page.new(page_params)
        @page.save  
        redirect_to @page   
    end

    def edit
    end

    def update
        # Mira en el registro del modelo actual
        # con el id que viene en la ruta
        # Filtramos ese formulario con params
        # para que no entre nada no deseado
        # Usa esos parametros limpios para actualizar con
        # el metodo update
        @page.update(page_params)
        # redirigimos para que no se quede en el sitio
        redirect_to @page
      end

      def destroy
        set_page
        @page.destroy
        redirect_to pages_path
        
      end

      private
        def page_params
            page_params = params.require(:page).permit(:title, :body, :slug)
        end

        def set_page
            @page = Page.find(params[:id])
            
        end
end
