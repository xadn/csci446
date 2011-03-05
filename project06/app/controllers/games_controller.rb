class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
  end

  # POST /games
  # POST /games.xml
  def create
    @game = Game.new(params[:game])

     if @game.save
       format.html { redirect_to(@game, :notice => 'Game was successfully created.') }
       format.xml  { render :xml => @game, :status => :created, :location => @game }
     else
       format.html { render :action => "new" }
       format.xml  { render :xml => @game.errors, :status => :unprocessable_entity }
     end
  end

  def update
    @game = Game.find(params[:id])

     if @game.update_attributes(params[:game])
       format.html { redirect_to(@game, :notice => 'Game was successfully updated.') }
       format.xml  { head :ok }
     else
       format.html { render :action => "edit" }
       format.xml  { render :xml => @game.errors, :status => :unprocessable_entity }
     end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
  end

end
