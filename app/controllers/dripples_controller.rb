class DripplesController < ApplicationController
    before_action :set_dripple, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate_user

# GET /dripples.json
def index
    @dripples = Dripple.all
end

# GET /dripples/1.json
def show
end

# POST /dripples.json
def create
    @dripple = Dripple.new(dripple_params)

    respond_to do |format|
      if @dripple.save
        format.json { render :show, status: :created, location: @dripple }
      else
        format.json { render json: @dripple.errors, status: :unprocessable_entity }
      end
    end
end

# PATCH/PUT /dripples/1.json
def update
    respond_to do |format|
      if @dripple.update(dripple_params)
        format.json { render :show, status: :ok, location: @dripple }
      else
        format.json { render json: @dripple.errors, status: :unprocessable_entity }
      end
    end
end

# DELETE /dripples/1.json
def destroy
    @dripple.destroy
    respond_to do |format|
        format.json { head :no_content }
    end
end


private 
    def set_dripple
        @dripple = Dripple.find(params[:id])
    end

    def dripple_params
        params.require(:dripple).permit(:title, :content, :image, :audio, :video, :location, :user_id, :category_id)
    end

end