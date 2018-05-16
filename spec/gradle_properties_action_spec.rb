describe Fastlane::Actions::GradlePropertiesAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The gradle_properties plugin is working!")

      Fastlane::Actions::GradlePropertiesAction.run(nil)
    end
  end
end
