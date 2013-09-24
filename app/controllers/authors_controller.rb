class AuthorsController < ApplicationController




#             POST   /authors(.:format)          authors#create
#  new_author GET    /authors/new(.:format)      authors#new
# edit_author GET    /authors/:id/edit(.:format) authors#edit
#      author GET    /authors/:id(.:format)      authors#show
#             PUT    /authors/:id(.:format)      authors#update
#             DELETE /authors/:id(.:format)      authors#destroy


	def index
		@authors = Author.all
	end


	def show
		@author = Author.find(params[:id])
	end




	def new
		@author = Author.new
	end

	def create
		Author.create(params[:author])
		redirect_to root_path
	end





	def edit
		@author = Author.find(params[:id])
	end

	def update
		author = Author.find(params[:id])
		author.update_attributes(params[:author])

		redirect_to root_path
	end






	def destroy
		author = Author.find(params[:id])
		author.destroy

		redirect_to root_path
	end

	
end