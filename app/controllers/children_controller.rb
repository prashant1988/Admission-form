
class ChildrenController < ApplicationController
  # GET /children
  # GET /children.json
  layout 'standard'
  def index
    @child = Child.all
    #@child=Child.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
    end
  end

  # GET /children/1
  # GET /children/1.json
  def show
    @child = Child.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child }
    end
  end


   def search
    @child=Child.find(:all, :conditions=>['uuid LIKE?',"#{params[:uuid]}"])
    if(@child==nil)
      redirect_to "index"
    else
      render "search"
    end
  end

  $i=0
    def searchmarks
    @s=params[:per]
    @a=Child.all
    @b=Array.new
  
   @a.each do |c|
    if (c.marks.to_i >@s.to_i)
      @b[$i]=c
      $i=$i+1
    else
    end
  end
end
#  $i=0

# class SelstuController < ApplicationController
#   def searchmarks
    
#         @s=params[:per]
#     @a=Child.all
#     @b=Array.new
#     @a.each do |c|
#     if (c.marks.to_i > @s.to_i)
    
#        @b[$i]=c
#        $i=$i+1
#         else
#          #render 'searchmarks'    
#         end

#    end
  

#   end
# end


       
#   end

  # GET /children/new
  # GET /children/new.json
  def new 
    @child = Child.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child }
    end
  end

  # GET /children/1/edit
  def edit
    @child = Child.find(params[:id])
  end

  # POST /children
  # POST /children.json
  def create

    @child = Child.new(params[:child])



        uud=UUID.new 
             @child.uuid= uud.generate[1,7] 
    #@child=Child.new(params[:child])
    

    respond_to do |format|
      if @child.save
        format.html { redirect_to @child, notice: 'Child was successfully created.' }
        format.json { render json: @child, status: :created, location: @child }
      else
        format.html { render action: "new" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
       end
    end
  end

  # PUT /children/1
  # PUT /children/1.json
  def update
    @child = Child.find(params[:id])

    respond_to do |format|
      if @child.update_attributes(params[:child])
        format.html { redirect_to @child, notice: 'Child was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @child.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children/1
  # DELETE /children/1.json
  def delete
    @child = Child.find(params[:id])
    @child.delete

    respond_to do |format|
      format.html { redirect_to children_url }
      format.json { head :ok }
    end
  end

end