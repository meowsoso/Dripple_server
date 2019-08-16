class TagsController < ApplicationController
    before_action :set_tag, only: [:show, :edit, :update, :destroy]

# GET /tags.json
def index
    @tags = Tag.all
end

# GET /tags/1.json
def show
end

# POST /tags.json
def create
    @tag = Tag.new(tag_params)

    respond_to do |format|
      if @tag.save
        format.json { render :show, status: :created, location: @tag }
      else
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
end

# PATCH/PUT /tags/1.json
def update
    respond_to do |format|
      if @tag.update(tag_params)
        format.json { render :show, status: :ok, location: @tag }
      else
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
end

# DELETE /tags/1.json
def destroy
    @tag.destroy
    respond_to do |format|
        format.json { head :no_content }
    end
end

private 
    def set_tag
        @tag = Tag.find(params[:id])
    end

    def tag_params
        params.require(:tag).permit(:tag_name, :dripple_id)
    end

end