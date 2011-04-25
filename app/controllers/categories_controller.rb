class CategoriesController < ActionController::Base
  def create
    @category = BrandCategory.new(params[:category])
    brand_id = params[:category][:brand_id]
    message = ""
    if @category.save
      flash[:notice] = 'Category created!'
    else
      @category.errors.each_full {|msg| message = message + msg + '. '}
      flash[:error] = message + 'Category was not saved!'
    end
    redirect_to '/refinery/brands/' + brand_id + '/edit'
  end
  
  def destroy
    category = BrandCategory.find(params[:id])
    brand_id = category[:brand_id]
    category.destroy
    flash[:notice] = 'Category deleted!'
    redirect_to '/refinery/brands/' + brand_id.to_s + '/edit'
  end
  
  def update
    category = BrandCategory.find(params[:id])
    if category.update_attributes(params[:category])
      flash[:notice] = 'Category updated!'
    else
      @category.errors.each_full {|msg| message = message + msg + '. '}
      flash[:error] = message + 'Category was not saved!'
    end
    redirect_to '/refinery/brands/' + category[:brand_id].to_s + '/edit'
  end
end

