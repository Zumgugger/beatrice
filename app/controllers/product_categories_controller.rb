class ProductCategoriesController < ApplicationController
before_action :set_product_category, only: [:show, :clist, :edit, :update, :destroy]
before_action :admin, only: [:list, :new, :clist, :edit, :update, :create, :destroy]
before_action :store_location

  # GET /product_categories
  # GET /product_categories.json

    
  def index
    @product_categories = ProductCategory.all
  end


  def list
    @product_categories = ProductCategory.all
  end

  # GET /product_categories/1
  # GET /product_categories/1.json
  def show
  end
    
  def clist
  end

  # GET /product_categories/new
  def new
    @product_category = ProductCategory.new
  end

  # GET /product_categories/1/edit
  def edit
  end

  # POST /product_categories
  # POST /product_categories.json
  def create
    @product_category = ProductCategory.new(product_category_params)

    respond_to do |format|
      if @product_category.save
        format.html { redirect_to @product_category, notice: 'Product category was successfully created.' }
        format.json { render :show, status: :created, location: @product_category }
      else
        format.html { render :new }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_categories/1
  # PATCH/PUT /product_categories/1.json
  def update
    if params[:up] == "1"
        @product_category.move_higher
        redirect_to product_categories_list_path
        return
    elsif params[:up] == "2"
        @product_category.move_lower
        redirect_to product_categories_list_path
        return
    end
             
    respond_to do |format|
    
    if @product_category.update(product_category_params)

        format.html { redirect_to @product_category, notice: 'Product category was successfully updated.' }
        format.json { respond_with_bip(@product_category) }
      else
        format.html { render :edit }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_categories/1
  # DELETE /product_categories/1.json
  def destroy
    @product_category.destroy
    respond_to do |format|
      format.html { redirect_to product_categories_url, notice: 'Product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category
      @product_category = ProductCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_category_params
      params.require(:product_category).permit(:name, :description, :published, :image, :hover, :product_category_id, :position, :id, :up)
    end
end
