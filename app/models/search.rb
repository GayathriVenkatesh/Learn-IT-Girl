class Search < ApplicationRecord

  def search_products
    products = Product.all
    products = products.where(["title LIKE ?", title]) if title.present?
    products = products.where(["model LIKE ?", model]) if model.present?
    products = products.where(["condition LIKE ?", condition]) if condition.present?
    products = products.where(["price >= ?", min_price]) if min_price.present?
    products = products.where(["price <= ?", max_price]) if max_price.present?

    return products

  end
end
