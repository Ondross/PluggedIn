class OthersController < ApplicationController
  # GET /others
  # GET /others.json
  def index
    @others = Other.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @others }
    end
  end

  # GET /others/1
  # GET /others/1.json
  def show
    @other = Other.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @other }
    end
  end

  # GET /others/new
  # GET /others/new.json
  def new
    @other = Other.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @other }
    end
  end

  # GET /others/1/edit
  def edit
    @other = Other.find(params[:id])
  end

  # POST /others
  # POST /others.json
  def create
    @other = Other.new(params[:other])

    respond_to do |format|
      if @other.save
        format.html { redirect_to @other, :notice => 'Other was successfully created.' }
        format.json { render :json => @other, :status => :created, :location => @other }
      else
        format.html { render :action => "new" }
        format.json { render :json => @other.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /others/1
  # PUT /others/1.json
  def update
    @other = Other.find(params[:id])

    respond_to do |format|
      if @other.update_attributes(params[:other])
        format.html { redirect_to @other, :notice => 'Other was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @other.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /others/1
  # DELETE /others/1.json
  def destroy
    @other = Other.find(params[:id])
    @other.destroy

    respond_to do |format|
      format.html { redirect_to others_url }
      format.json { head :ok }
    end
  end

  def search
  #within others
  #phone numbers not searchable
  
  #Search Options:  And/Or,  DOB(<, =, or >)
  	@first = params[:first].downcase
	@last = params[:last].downcase
	@address1 = params[:address1].downcase
	@home_email = params[:home_email].downcase
	@type = params[:type].downcase
	@others = Other.all
	@results = []
	if params[:andor]
		@andor = params[:andor].downcase
	end

	#"AND" search
	if @andor == 'and'
		@others.each do |other|
			if other.first.downcase.include? @first and other.address1.downcase.include? @address1 and other.home_email.downcase.include? @home_email and other.last.downcase.include? @last
				if Other.column_names.include? @type
					if other.send(@type) == true
						@results << other
					end
				end
			end
		end
	else  # makes "OR" the default search
	
	#"OR" search

		@others.each do |other|
			if @first != '' and other.first.downcase.include? @first  #Check for empty to avoid false positive ("" does include "")
				@results << other
			elsif @last != '' and other.last.downcase.include? @last
				@results << other
			elsif @address1 != '' and other.address1.downcase.include? @address1
				@results << other
			elsif @home_email != '' and other.home_email.downcase.include? @home_email
				@results << other
			elsif @type != '' and Other.column_names.include? @type and other.send(@type) == true
				@results << other
			end
		end
	end

	
    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @results }
    end
  end

end
