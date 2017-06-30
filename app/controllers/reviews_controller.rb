class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

    def create
      @product = Product.find(params[:product_id])
      @review = @product.reviews.new(review_params)
      if @review.save
        flash[:notice] = "Review successfully added!"
        redirect_to product_path(@review.product)
      else
        flash[:alert] = "Sorry review not successfully added!"
        render :new
      end
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to products_path
    end

  private
    def review_params
      params.require(:review).permit(:name, :comment, :rating)
    end

end
