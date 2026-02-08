class Product1sController < ApplicationController
  before_action :set_product1, only: %i[ show edit update destroy ]

  # GET /product1s or /product1s.json
  def index
    @product1s = Product1.all
    # Day17
    # @product1s = Product1::Category.all
    # raise @product1s.inspect
    # @product1s = Product1.out_of_stock
  end

  def out_of_stock
    # @product1s = Product1.where("stock <= ?", 0)  # we can write but not a good practice
    @product1s = Product1.out_of_stock
  end

  # GET /product1s/1 or /product1s/1.json
  def show
  end

  # GET /product1s/new
  def new
    @product1 = Product1.new
  end

  # GET /product1s/1/edit
  def edit
  end

  # POST /product1s or /product1s.json
  def create
    @product1 = Product1.new(product1_params)

    respond_to do |format|
      if @product1.save
        format.html { redirect_to @product1, notice: "Product1 was successfully created." }
        # Day 15
        Product1Mailer.with(product1: @product1).welcome_email.deliver
        format.json { render :show, status: :created, location: @product1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product1s/1 or /product1s/1.json
  def update
    respond_to do |format|
      if @product1.update(product1_params)
        format.html { redirect_to @product1, notice: "Product1 was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @product1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product1s/1 or /product1s/1.json
  def destroy
    @product1.destroy!

    respond_to do |format|
      format.html { redirect_to product1s_path, notice: "Product1 was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product1
      @product1 = Product1.find(params.expect(:id))
    end

    # Day14, Day15
    # Only allow a list of trusted parameters through.
    def product1_params
      params.expect(product1: [ :name, :descripition, :price, :stock, :is_active, :feedback, :email ,:invoice,product_pic:[]]) # and invoice as attachment
    end
end
