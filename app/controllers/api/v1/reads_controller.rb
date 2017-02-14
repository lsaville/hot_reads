class Api::V1::ReadsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    read = Read.new(url: params['read'])
    read.save
  end
end
