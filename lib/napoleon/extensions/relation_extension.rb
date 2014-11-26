class ActiveRecord::Relation
  include Napoleon::Extensions::CollectionRenderable

  def fetch_collection
    self.to_a
  end
end
