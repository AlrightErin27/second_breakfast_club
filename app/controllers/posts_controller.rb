class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # Before executing the show, edit, update, or destroy actions,
  # run the set_post method to load the specific post based on the ID from the URL.
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  # The index action retrieves all posts from the database and assigns them to @posts.
  # This data is then available to the corresponding index view for display.
  def index
    @posts = Post.all
  end

  # GET /posts/1 or /posts/1.json
  # The show action displays a single post.
  # The specific post is already loaded by the set_post callback.
  def show
  end

  # GET /posts/new
  # The new action initializes a new, unsaved Post object.
  # This object is used in the new view to build a form for creating a new post.
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  # The edit action is used to display a form for editing an existing post.
  # The post to be edited is loaded by the set_post callback.
  def edit
  end

  # POST /posts or /posts.json
  # The create action attempts to create a new post using the parameters provided by the form.
  # It uses the post_params method to ensure only allowed attributes are set.
  def create
    @post = Post.new(post_params)

    # respond_to allows us to handle both HTML and JSON formats.
    respond_to do |format|
      if @post.save
        # If the post saves successfully, redirect to the post's show page.
        # Also, display a notice that the post was created.
        format.html {  redirect_to forum_path(@post), notice: "Post was successfully created." }
        # For JSON requests, render the show view with a status of 'created' (HTTP 201).
        format.json { render :show, status: :created, location: @post }
      else
        # If saving fails (for example, due to validation errors), re-render the new form.
        # HTTP status 'unprocessable_entity' (422) indicates there was an error with the data.
        format.html { render :new, status: :unprocessable_entity }
        # For JSON requests, return the errors in JSON format.
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  # The update action attempts to modify an existing post with new data.
  def update
    respond_to do |format|
      if @post.update(post_params)
        # If the update is successful, redirect to the post's show page with a success notice.
        format.html { redirect_to forum_path(@post), notice: "Post was successfully updated." }
        # For JSON requests, render the show view with an OK status (HTTP 200).
        format.json { render :show, status: :ok, location: @post }
      else
        # If the update fails, re-render the edit form with an 'unprocessable_entity' status.
        format.html { render :edit, status: :unprocessable_entity }
        # For JSON requests, return the errors in JSON format.
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  # The destroy action removes the specified post from the database.
  def destroy
    @post.destroy
    respond_to do |format|
      # After deletion, redirect to the index page (list of posts) with a notice.
      # The status :see_other (HTTP 303) indicates redirection after a DELETE.
      format.html { redirect_to forum_index_path, status: :see_other, notice: "Post was successfully destroyed." }
      # For JSON requests, return no content (HTTP 204).
      format.json { head :no_content }
    end
  end

  private
    # The set_post method finds and sets the @post variable using the ID provided in the URL parameters.
    def set_post
      @post = Post.find(params[:id])
    end

    # The post_params method uses strong parameters to permit only the specified attributes.
    # This protects against unwanted or malicious parameters being submitted.
    def post_params
      params.require(:post).permit(:title, :body, :author, :posted_at)
    end
end
