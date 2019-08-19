json.extract! dripple, :id, :title, :content, :image, :audio, :video, :longitude, :latitude, :user_id, :category_id, :created_at, :updated_at
json.tag do
    json.array! dripple.tags, :id, :tag_name
end
# json.category do
#    json.extract! dripple.category, :id, :name
# end
