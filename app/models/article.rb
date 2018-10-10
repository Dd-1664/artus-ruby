class Article < ActiveRecord::Base

  validates :title, presence: {

    message: "No title"

  }

  validates :author, presence: {

    message: "No author"

  }

  validates :article_text, presence: {

    message: "No text"

  }

  validates :title, uniqueness: {

    message: "already taken"

  }
end
