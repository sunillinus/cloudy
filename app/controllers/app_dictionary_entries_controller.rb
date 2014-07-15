class AppDictionaryEntriesController < ApplicationController
  before_action :set_app_dictionary_entry, only: [:show, :edit, :update, :destroy]

  # GET /app_dictionary_entries
  # GET /app_dictionary_entries.json
  def index
    @app_dictionary_entries = AppDictionaryEntry.all
  end

  # GET /app_dictionary_entries/1
  # GET /app_dictionary_entries/1.json
  def show
  end

  # GET /app_dictionary_entries/new
  def new
    @app_dictionary_entry = AppDictionaryEntry.new
  end

  # GET /app_dictionary_entries/1/edit
  def edit
  end

  # POST /app_dictionary_entries
  # POST /app_dictionary_entries.json
  def create
    @app_dictionary_entry = AppDictionaryEntry.new(app_dictionary_entry_params)

    respond_to do |format|
      if @app_dictionary_entry.save
        format.html { redirect_to @app_dictionary_entry, notice: 'App dictionary entry was successfully created.' }
        format.json { render :show, status: :created, location: @app_dictionary_entry }
      else
        format.html { render :new }
        format.json { render json: @app_dictionary_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_dictionary_entries/1
  # PATCH/PUT /app_dictionary_entries/1.json
  def update
    respond_to do |format|
      if @app_dictionary_entry.update(app_dictionary_entry_params)
        format.html { redirect_to @app_dictionary_entry, notice: 'App dictionary entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_dictionary_entry }
      else
        format.html { render :edit }
        format.json { render json: @app_dictionary_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_dictionary_entries/1
  # DELETE /app_dictionary_entries/1.json
  def destroy
    @app_dictionary_entry.destroy
    respond_to do |format|
      format.html { redirect_to app_dictionary_entries_url, notice: 'App dictionary entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_dictionary_entry
      @app_dictionary_entry = AppDictionaryEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_dictionary_entry_params
      params.require(:app_dictionary_entry).permit(:name)
    end
end
