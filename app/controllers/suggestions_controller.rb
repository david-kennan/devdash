class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.all;
  end
  
  def show
    @suggestion = Suggestion.find(params[:id])
  end

  def new
    @suggestion = Suggestion.new
  end
 
  def sugviaui
    @suggestions = Suggestion.all
  end

  def edit
    @suggestion = Suggestion.find(params[:id])
  end
 
  def create
    @suggestion = Suggestion.new(params[:suggestion])
    @suggestion.labels = params[:clabels].split
    if @suggestion.save
      redirect_to @suggestion, notice: 'Suggestion was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @suggestion = Suggestion.find(params[:id])
    @suggestion.labels = params[:clabels].split
    if @suggestion.update_attributes(params[:suggestion])
      redirect_to @suggestion, notice: 'Suggestion was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @suggestion = Suggestion.find(params[:id]);
    @suggestion.destroy
    redirect_to suggestions_url
  end
end
