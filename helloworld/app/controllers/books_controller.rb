class BooksController < ApplicationController
  ...
  # Never trust parameters from the scary internet, only allow
the white list through.
  def book_params
    params.require(:book).permit(:title, :memo)
    params.require(:book).permit(:title, :memo, :author)
  end
end