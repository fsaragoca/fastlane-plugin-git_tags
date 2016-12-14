describe Fastlane::Actions::GitTagsAction do
  describe 'git_tags' do
    it "executes the correct git command" do
      allow(Fastlane::Actions).to receive(:sh).with("git tag | xargs -I@ git log --format=format:\"%ai @%n\" -1 @ | sort | awk '{print $4}'", anything).and_return('')
      result = Fastlane::FastFile.new.parse("lane :test do
        git_tags
      end").runner.execute(:test)

      expect(result).to eq([])
    end

    context("with two tags") do
      before do
        allow(Fastlane::Actions).to receive(:sh).with("git tag | xargs -I@ git log --format=format:\"%ai @%n\" -1 @ | sort | awk '{print $4}'", anything).and_return("v0.1.0\nv0.1.1")
      end

      it "limits number of tags" do
        result = Fastlane::FastFile.new.parse("lane :test do
          git_tags(limit: 1)
        end").runner.execute(:test)

        expect(result).to eq(['v0.1.1'])
      end

      it "sorts tags" do
        result = Fastlane::FastFile.new.parse("lane :test do
          git_tags
        end").runner.execute(:test)

        expect(result).to eq(['v0.1.1', 'v0.1.0'])
      end
    end
  end
end
