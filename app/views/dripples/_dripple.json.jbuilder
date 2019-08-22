json.extract! dripple, :id, :title, :content, :image, :audio, :video, :longitude, :latitude, :user_id, :category_id, :created_at, :updated_at

json.category do 
    if !dripple.category.present?
        json.null
    else
        json.category dripple.category.name
    end
end

json.tag do 
    json.array! dripple.tags, :id, :tag_name
end


json.user_name dripple.user, :name
