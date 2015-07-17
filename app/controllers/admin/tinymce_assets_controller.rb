class Admin::TinymceAssetsController < ApplicationController
  respond_to :json
  skip_before_filter :track_action

  def create
    image = Image.new attachment: image_params["file"].tempfile
    if image.save
      render json: {
            image: {
              url: image.attachment.url
            }
          }, content_type: "text/html"
    else
      render json: {errors: "Upload Failed" }, status: 500
    end
  end


  private

  def image_params
    params.permit(:file)
  end

end
