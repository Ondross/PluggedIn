class StudentsController < ApplicationController
  # GET /students
  # GET /students.xml
  def index
	redirect_to :contact_list
   # @students = Student.all

   # respond_to do |format|
      #format.html # index.html.erb
      #format.xml  { render :xml => @students }
   # end
  end

  def homepage
    
    respond_to do |format|
      format.html
    end
  end
  
  def contact_list
    @students = Student.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @students }
    end
  end
  
  def view_all
	@contacts = Student.all
	
	respond_to do |format|
	  format.html # index.html.erb
	  format.xml  { render :xml => @students }
	end
   end

  # GET /students/1
  # GET /students/1.xml
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/new
  # GET /students/new.xml
  def new
    @student = Student.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.xml
  def create
    @student = Student.new(params[:student])

	Student.all.each do |oldStudent|
		if oldStudent.name == @student.name and oldStudent.last_name == @student.last_name
	#		@student.attributes.each_pair do |param, val|
	#			att = param.to_sym
    	#			@student.send(att) = 'repitez'
	#		end
			
			oldStudent.destroy
		end
	end
			

    respond_to do |format|
      if @student.save
        format.html { redirect_to(@student, :notice => 'Student was successfully created.') }
        format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.xml
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to(@student, :notice => 'Student was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.xml
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to(students_url) }
      format.xml  { head :ok }
    end
  end
  
  #SEARCH METHODS

  def name_search
	@name = params[:name]
	@students = Student.all
	@results = []
	
	@students.each do |student|
		if student.name.include? @name
			@results << student
		end
	end
	
    respond_to do |format|
      format.html # name_search.html.erb
      format.xml  { render :xml => @results }
    end
  end
  
  def edit_all
  
  end
  
  def search
  #only works for students
  #phone numbers not searchable
  
  #Search Options:  And/Or,  DOB(<, =, or >)
  
	@name = params[:name].downcase
	@address = params[:address].downcase
	@email = params[:email].downcase
	@dob = params[:dob]
	@last_name = params[:last_name].downcase
	@students = Student.all
	@results = []
	if params[:andor]
		@andor = params[:andor].downcase
	end

	#"AND" search
	if @andor == 'and'
		@students.each do |student|
			if student.name.downcase.include? @name and student.address.downcase.include? @address and student.email.downcase.include? @email and student.last_name.downcase.include? @last_name
				if @dob.include? ">"
					@dob = @dob.delete ">"
					if student.date_of_birth > @dob
						@results << student
					end
				elsif @dob.include? "<"
					@dob = @dob.delete "<"
					if student.date_of_birth > @dob
						@results << student
					end
				elsif @dob.include? "="
					@dob = @dob.delete "="
					if student.date_of_birth == @dob
						@results << student
					end
				else
					if student.date_of_birth.include? @dob
						@results << student
					end
				end
			end
		end
	else  # makes "OR" the default search
	
	#"OR" search

		@students.each do |student|
			if @name != '' and student.name.downcase.include? @name  #Check for empty to avoid false positive ("" does include "")
				@results << student
			elsif @last_name != '' and student.last_name.downcase.include? @name
				@results << student
			elsif @address != '' and student.address.downcase.include? @address
				@results << student
			elsif @email != '' and student.email.downcase.include? @email
				@results << student
			elsif @dob != ''
				if @dob.include? ">"
					@dob = @dob.delete ">"
					if student.date_of_birth > @dob
						@results << student
						#return
					end
				elsif @dob.include? "<"
					@dob = @dob.delete "<"
					if student.date_of_birth > @dob
						@results << student
						#return
					end
				elsif @dob.include? "="
					@dob = @dob.delete "="
					if student.date_of_birth == @dob
						@results << student
						#return
					end
				else
					if student.date_of_birth.include? @dob
						@results << student
						#return
					end
				end
			end
		end
	end
	
    respond_to do |format|
      format.html # search.html.erb
      format.xml  { render :xml => @results }
    end
  end
end
