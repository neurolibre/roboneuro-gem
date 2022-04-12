require_relative 'spec_helper'

describe Whedon::Auditor do

  subject { Whedon::Auditor.new(File.read('fixtures/review_body.txt')) }

  it "knows how to find the author from the issue body" do
    expect(subject.verify_author).to eql("Author: @zhaozhang")
  end

  it "knows how to find the version from the issue body" do
    expect(subject.verify_version).to eql("Version: v1.2")
  end

  it "knows how to find the repository from the issue body" do
    expect(subject.verify_repository).to eql("Repository: \"https://github.com/applicationskeleton/Skeleton\"")
  end

  it "knows how to find the archive from the issue body" do
    expect(subject.verify_archive).to eql("Repository archive: \"http://dx.doi.org/10.5281/zenodo.13750\" Data archive: \"http://dx.doi.org/10.5281/zenodo.13750\" Book archive: \"http://dx.doi.org/10.5281/zenodo.13750\" Docker archive: \"http://dx.doi.org/10.5281/zenodo.13750\"")
  end

  it "knows how to find the Jupyter Book from the issue body" do
    expect(subject.verify_book).to eql("Jupyter Book: \"https://neurolibre.org\"")
  end
end

