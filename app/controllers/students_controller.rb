require 'HTTParty'

class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all

    @code = options_params()

    @options = {
      client_id: 'b698ad5804c807d9e188',
      client_secret: 'b3a1eafd50341af17d3accaa6cbbb0f2da406610',
      code: @code,
      redirect_uri: 'http://localhost:3000/students',
      state: 'uhoqerhluqewr;tilhqr40r84ut08o34wty43'
    }

    @response = HTTParty.get('https://github.com/login/oauth/access_token', :body => @options)
    # if @response.code == 200
    #   session[:github_login] = @response.inspect

    # @session = sessions_params()
    # @data = HTTParty.get('https://api.github.com/user', :body => @response)

  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params[:student]
    end

    # Callback code parameter from GitHub API
    def options_params
      params[:code]
    end

    # Session parameter
    def sessions_params
      params[:github_id]
    end
end
