# The Whedon::Auditor simply uses the regexes defined for a GitHub review issue
# body and prints them out.

module Whedon
  class Auditor
    attr_accessor :review_body

    def initialize(review_body)
      @review_body = review_body
    end

    def audit
      puts verify_author
      puts verify_version
      puts verify_repository
      puts verify_archive
      puts verify_book
    end

    def verify_author
      author = review_body[AUTHOR_REGEX]
      return "Author: #{author}" if author
    end

    def verify_version
      version = review_body[VERSION_REGEX]
      return "Version: #{version}" if version
    end

    def verify_repository
      repository_address = review_body[REPO_REGEX]
      return "Repository: #{repository_address}" if repository_address
    end

    def verify_archive
      archive_repository = review_body[ARCHIVE_REPOSITORY_REGEX]
      archive_data = review_body[ARCHIVE_DATA_REGEX]
      archive_book = review_body[ARCHIVE_BOOK_REGEX]
      archive_docker = review_body[ARCHIVE_DOCKER_REGEX]
      return "Repository archive: #{archive_repository} Data archive: #{archive_data} Book archive: #{archive_book} Docker archive: #{archive_docker}" if archive_repository && archive_book && archive_data && archive_docker
    end

    def verify_book
      book = review_body[BOOK_EXEC_REGEX]
      return "Jupyter Book: #{book}"
    end
  end
end
