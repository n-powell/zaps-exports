class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

    def create
      @product = Product.find(params[:product_id])
      @review = @product.reviews.new(review_params)
      if @review.save
        redirect_to product_path(@review.product)
      else
        render :new
      end
    end

    def edit
      @review = Review.find(params[:id])
    end

    def update
      @review= Review.find(params[:id])
      if @review.update(review_params)
        redirect_to reviews_path
      else
        render :edit
      end
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to reviews_path
    end

  private
    def review_params
      params.require(:review).permit(:name, :comment, :rating)
    end

end
