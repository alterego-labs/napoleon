class Hash
  include Napoleon::Extensions::CollectionRenderable

  def fetch_collection
    values
  end
end
