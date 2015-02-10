class Dashboard::TestsController < ApplicationController
  def index
  end

  def show
    # This one redirects to dashboard/target controller which does not exist
    redirect_to url_for(controller: 'target', action: 'index')

    # This one redirects to "target" controller which is right. This is why:
    # https://github.com/rails/rails/commit/9444ac9312470696b6a5d73cd0044329211ec4c6#diff-ccdef70ce0e95afc8816f47f89b56c60R345
    # redirect_to targeturl_path
  end
end
