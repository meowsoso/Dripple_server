json.extract! dripple, :id, :title, :content, :image, :audio, :video, :location, :user_id, :created_at, :updated_at
json.user do 
    json.extract! dripple.user, :id, :name
end
