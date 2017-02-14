class HotreadsController < ApplicationController
  def index
    @hot_reads = Read.top_ten_from_last_24
  end
end
