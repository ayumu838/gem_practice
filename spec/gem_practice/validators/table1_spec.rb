RSpec.describe GemPractice::Validators::Table1 do
  let(:instance) { described_class.new(hash_values) }

  before { instance.valid? }

  context "name" do
    let(:hash_values) { { name: name } }

    context "nameがnilの場合" do
      let(:name) { nil }

      it "エラーが返ること" do
        expect(instance.errors.message(:name)).to include("名前を入力してください")
      end
    end

    context "nameが3文字未満の場合" do
      let(:name) { "aa" }

      it "エラーが返ること" do
        expect(instance.errors.message(:name)).to include("名前は3文字以上にしてください")
      end
    end

    context "nameが3文字以上の場合" do
      let(:name) { "aaa" }

      it "エラーが返らないこと" do
        expect(instance.errors.message(:name)).to be_nil
      end
    end
  end
end
