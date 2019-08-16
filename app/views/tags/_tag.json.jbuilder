json.extract! tag, :id, :tag_name, :created_at, :updated_at
json.dripple @tag.dripples do |dripple| 
    json.extract! dripple, :title, :content, :created_at, :updated_at, :user_id, :category_id
end


