class EnergiesController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @energies = Energy.order(sort_column + " " + sort_direction)
  end

  # GET /energies/1
  # GET /energies/1.json
  def show
    @energy = Energy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @energy }
    end
  end

  # GET /energies/new
  # GET /energies/new.json
  def new
    @energy = Energy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @energy }
    end
  end

  # GET /energies/1/edit
  def edit
    @energy = Energy.find(params[:id])
  end

  # POST /energies
  # POST /energies.json
  def create
    @energy = Energy.new(params[:energy])

    respond_to do |format|
      if @energy.save
        format.html { redirect_to @energy, notice: 'Energy was successfully created.' }
        format.json { render json: @energy, status: :created, location: @energy }
      else
        format.html { render action: "new" }
        format.json { render json: @energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /energies/1
  # PUT /energies/1.json
  def update
    @energy = Energy.find(params[:id])

    respond_to do |format|
      if @energy.update_attributes(params[:energy])
        format.html { redirect_to @energy, notice: 'Energy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @energy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /energies/1
  # DELETE /energies/1.json
  def destroy
    @energy = Energy.find(params[:id])
    @energy.destroy

    respond_to do |format|
      format.html { redirect_to energies_url }
      format.json { head :no_content }
    end
  end

  private

  def sort_column
    params[:sort] || "created_at"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
