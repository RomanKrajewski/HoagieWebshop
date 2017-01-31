class SelfiePostsController < ApplicationController
  before_action :set_selfie_post, only: [:show, :edit, :update, :destroy]

  # GET /selfie_posts
  # GET /selfie_posts.json
  def index
    @selfie_posts = SelfiePost.all
  end

  # GET /selfie_posts/1
  # GET /selfie_posts/1.json
  def show
  end

  # GET /selfie_posts/new
  def new
    @selfie_post = SelfiePost.new
  end

  # GET /selfie_posts/1/edit
  def edit
  end

  # POST /selfie_posts
  # POST /selfie_posts.json
  def create
    @selfie_post = SelfiePost.new(selfie_post_params)

    respond_to do |format|
      if @selfie_post.save
        format.html { redirect_to @selfie_post, notice: 'Selfie post was successfully created.' }
        format.json { render :show, status: :created, location: @selfie_post }
      else
        format.html { render :new }
        format.json { render json: @selfie_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selfie_posts/1
  # PATCH/PUT /selfie_posts/1.json
  def update
    respond_to do |format|
      if @selfie_post.update(selfie_post_params)
        format.html { redirect_to @selfie_post, notice: 'Selfie post was successfully updated.' }
        format.json { render :show, status: :ok, location: @selfie_post }
      else
        format.html { render :edit }
        format.json { render json: @selfie_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selfie_posts/1
  # DELETE /selfie_posts/1.json
  def destroy
    @selfie_post.destroy
    respond_to do |format|
      format.html { redirect_to selfie_posts_url, notice: 'Selfie post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selfie_post
      @selfie_post = SelfiePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selfie_post_params
      params.require(:selfie_post).permit(:description, :picture_url, :User_id)
    end
end
