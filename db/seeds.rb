CATEGORIES = ["Đồ chơi trẻ em", "Sữa", "Sữa thanh trùng", "Quần áo trẻ em", "Sữa chua ăn",
              "Sữa chua uống", "Sữa chua lên men", "Sách vải", "Bể bơi", "Phao"]
PRODUCT_TYPES = ["Bơi", "Phao", "Đồ chơi", "Trẻ em", "Nhựa", "Kim loại", "Mua nhiều", "Mới",
                 "Đánh giá cao", "Nhiều bình luận", "Rẻ", "Bóng", "Âm thanh", "Vải"]
cate_ids = []
product_type_ids = []
ActiveRecord::Base.transaction do
  puts "Đang tạo Product"
  100.times do |index|
    Product.create name: "Milk #{index}",
                   description: "This is test data",
                   price: "100000",
                   color: "red"
  end
  products = Product.all

  puts "Đang tạo Category"
  CATEGORIES.each do |cate|
    new_cate = Category.create name: cate,
                               description: "This is test data"
    cate_ids.push new_cate.id
  end

  puts "Đang tạo ProductsCategory"
  products.each do |product|
    product.products_categories.create category_id: cate_ids.sample,
                                       description: "This is #{product.name} category"
  end

  puts "Đang tạo ProductType"
  PRODUCT_TYPES.each do |product_type|
    new_product_type = ProductType.create name: product_type,
                                          description: "This is test data"
    product_type_ids.push new_product_type.id
  end

  puts "Đang tạo ProductsProductType"
  products.each do |product|
    product.products_product_types.create product_type_id: product_type_ids.sample,
                                          description: "This is #{product.name} product_types"
  end


  puts "Đã khởi tạo dữ liệu xong"
end