class TaskDocumentsController < ApplicationController
  # GET /task_documents
  # GET /task_documents.xml
  def index
    @task_documents = TaskDocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @task_documents }
    end
  end

  # GET /task_documents/1
  # GET /task_documents/1.xml
  def show
    @task_document = TaskDocument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task_document }
    end
  end

  # GET /task_documents/new
  # GET /task_documents/new.xml
  def new
    @task_document = TaskDocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task_document }
    end
  end

  # GET /task_documents/1/edit
  def edit
    @task_document = TaskDocument.find(params[:id])
  end

  # POST /task_documents
  # POST /task_documents.xml
  def create
    @task_document = TaskDocument.new(params[:task_document])

    respond_to do |format|
      if @task_document.save
        format.html { redirect_to(@task_document, :notice => 'Task document was successfully created.') }
        format.xml  { render :xml => @task_document, :status => :created, :location => @task_document }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @task_document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /task_documents/1
  # PUT /task_documents/1.xml
  def update
    @task_document = TaskDocument.find(params[:id])

    respond_to do |format|
      if @task_document.update_attributes(params[:task_document])
        format.html { redirect_to(@task_document, :notice => 'Task document was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task_document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /task_documents/1
  # DELETE /task_documents/1.xml
  def destroy
    @task_document = TaskDocument.find(params[:id])
    @task_document.destroy

    respond_to do |format|
      format.html { redirect_to(task_documents_url) }
      format.xml  { head :ok }
    end
  end
end
