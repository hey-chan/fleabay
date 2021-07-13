module ListingsHelper
  def image_select(listing)
    return listing.picture if listing.picture.attached?
      # if no image, will default to below
    return "coathanger.jpg"
  end
end
