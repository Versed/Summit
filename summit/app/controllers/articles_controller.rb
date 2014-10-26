class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "nkluth", password: "secret"
end
