require "base64"
class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def before
    @before_pic = Picture.before
  end

  def after
    @after_pic = Picture.after
  end

  def show
  end

  # GET /users/new
  def new
    @picture = Picture.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    respond_to do |format|
      if @picture.save
        format.json { render json: @picture.to_json, status: :created }
      else
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Picture was successfully updated' }
        format.json { render :show, status: :created, location: @picture }
      else
        format.html { render :new }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @ppicture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

    def picture_params
      params.require(:picture).permit(:photo, :caption, :user_id)
    end
end
