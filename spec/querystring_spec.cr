require "./spec_helper"

describe QString do
  it "works with a simple query" do
    QString.parse("?a=b").should eq ({"a" => "b"})
  end

  it "works with a query including an integer" do
    QString.parse("?number=2").should eq ({"number" => 2})
  end

  it "works with a query including multiple parameters" do
    QString.parse("?a=b&number=1234&x=test").should eq ({"a" => "b", "number" => 1234, "x" => "test"})
  end

  it "works with a simple hash" do
    QString.stringify({"a" => "b"}).should eq ("?a=b")
  end

  it "works with a hash including other types" do
    QString.stringify({"bool" => true, "number" => 100}).should eq ("?bool=true&number=100")
  end

  it "works with a custom option" do
    QString.stringify({"a" => 1234}, {"question_mark" => false}).should eq ("a=1234")
  end
end
