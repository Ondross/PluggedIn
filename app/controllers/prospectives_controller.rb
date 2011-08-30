class ProspectivesController < ApplicationController
  # GET /prospectives
  # GET /prospectives.json
  def index
    @prospectives = Prospective.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @prospectives }
    end
  end

  # GET /prospectives/1
  # GET /prospectives/1.json
  def show
    @prospective = Prospective.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @prospective }
    end
  end

  # GET /prospectives/new
  # GET /prospectives/new.json
  def new
    @prospective = Prospective.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @prospective }
    end
  end

  # GET /prospectives/1/edit
  def edit
    @prospective = Prospective.find(params[:id])
  end

  # POST /prospectives
  # POST /prospectives.json
  def create
    @prospective = Prospective.new(params[:prospective])

    respond_to do |format|
      if @prospective.save
        format.html { redirect_to @prospective, :notice => 'Prospective was successfully created.' }
        format.json { render :json => @prospective, :status => :created, :location => @prospective }
      else
        format.html { render :action => "new" }
        format.json { render :json => @prospective.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prospectives/1
  # PUT /prospectives/1.json
  def update
    @prospective = Prospective.find(params[:id])

    respond_to do |format|
      if @prospective.update_attributes(params[:prospective])
        format.html { redirect_to @prospective, :notice => 'Prospective was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @prospective.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prospectives/1
  # DELETE /prospectives/1.json
  def destroy
    @prospective = Prospective.find(params[:id])
    @prospective.destroy

    respond_to do |format|
      format.html { redirect_to prospectives_url }
      format.json { head :ok }
    end
  end

def search
  #within prospectives
  #phone numbers not searchable
  
  #Search Options:  And/Or,  DOB(<, =, or >)
  	@first = params['first'].downcase
	@last = params['last'].downcase
	@address1 = params['address1'].downcase
	@home_email = params['email'].downcase
	@prospectives = Prospective.all
	@results = []
	if params[:andor]
		@andor = params[:andor].downcase
	end

	#"AND" search
	if @andor == 'and'
		@prospectives.each do |prospective|
			if prospective.first.downcase.include? @first and prospective.street1.downcase.include? @address1 and prospective.email.downcase.include? @home_email and prospective.last.downcase.include? @last
				@results << prospective
			end
		end
	else  # makes "OR" the default search
	
	#"OR" search

		@prospectives.each do |prospective|
			if @first != '' and prospective.first.downcase.include? @first  #Check for empty to avoid false positive ("" does include "")
				@results << prospective
			elsif @last != '' and prospective.last.downcase.include? @last
				@results << prospective
			elsif @address1 != '' and prospective.street1.downcase.include? @address1
				@results << prospective
			elsif @home_email != '' and prospective.email.downcase.include? @home_email
				@results << prospective
			end
		end
	end

	
    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @results }
    end
  end
end
