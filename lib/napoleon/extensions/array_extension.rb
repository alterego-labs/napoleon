class Array
  include Napoleon::Extensions::CollectionRenderable

  def fetch_collection
    self
  end
end
