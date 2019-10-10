class Article < ApplicationRecord
  validates_uniqueness_of :article_type, if: -> { article_type == "mission"}
  validates_uniqueness_of :article_type, if: -> { article_type == "problems"}
  validates_uniqueness_of :article_type, if: -> { article_type == "services"}
  validates_uniqueness_of :article_type, if: -> { article_type == "team"}
  validates_uniqueness_of :article_type, if: -> { article_type == "clients"}
end
