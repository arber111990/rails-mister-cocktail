class ReviewsConroller < ApplicationController
  def create
    @cocktail = Cockail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to_cocktail_path(@cocktail)
      else
      @dose = Dose.new
      render "cocktails/show"
    end
  end

private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
