class HomeController < ApplicationController

	def index

	end 

	def search
		@search=Decument.select('decuments.*').where("decuments.title like ? OR decuments.subject like?", "%#{params[:search_p]}%","%#{params[:search_p]}%")
		respond_to do |format|
	      format.js {  }
	       format.html {  }
	   end	
	end
end
