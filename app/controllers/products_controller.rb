class ProductsController < ApplicationController 
    skip_before_action :verify_authenticity_token

    def index
        @products = Product.all
    end

    def destroy
    end

    def new
    end

    def edit
    end

    def update
    end

    def show
    end

    def create
        # render json: params
        # Product.new(params[:product])
        @product = Product.new(params.require(:product).permit(:price, :qty, :category, :brand, :name))

        @product.save

        redirect_to '/products'

    end

end