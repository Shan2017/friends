# frozen_string_literal: true

require "./test/helper"

clean_describe "list favorite locations" do
  subject { run_cmd("list favorite locations") }

  describe "when file does not exist" do
    it "prints nothing" do
      stdout_only ""
    end
  end

  describe "when file is empty" do
    let(:content) { "" }

    it "prints nothing" do
      stdout_only ""
    end
  end

  describe "when file has content" do
    let(:content) do
      <<-FILE
### Activities:
- 2017-01-01: **Grace Hopper** and I went to _Marie's Diner_ for breakfast.
- 2015-11-01: **Grace Hopper** and I went to _Marie's Diner_. George had to cancel at the last minute. @food
- 2015-01-04: Got lunch with **Grace Hopper** and **George Washington Carver**. @food
- 2014-12-31: Celebrated the new year in _Paris_ with **Marie Curie**. @partying
- 2014-11-15: Talked to **George Washington Carver** on the phone for an hour.

### Friends:
- George Washington Carver
- Grace Hopper (a.k.a. The Admiral a.k.a. Amazing Grace) [Paris] @navy @science
- Marie Curie [Atlantis] @science

### Locations:
- Atlantis
- Marie's Diner
- Paris
FILE
    end

    it "lists locations in order of decreasing activity" do
      stdout_only <<-OUTPUT
1. Marie's Diner (2 activities)
2. Paris         (1)
3. Atlantis      (0)
      OUTPUT
    end
  end
end