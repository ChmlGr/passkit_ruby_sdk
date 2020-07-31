RSpec.describe PasskitSdk do
  it 'has a version number' do
    expect(PasskitSdk::VERSION).not_to be nil
  end

  it 'Everything is loaded correctly' do
    expect(PasskitSdk::Analytics::Stub).not_to be nil
    expect(PasskitSdk::Io::Certificates::Stub).not_to be nil
    expect(PasskitSdk::Io::Images::Stub).not_to be nil
    expect(PasskitSdk::Io::Users::Stub).not_to be nil
    expect(PasskitSdk::Io::Messages::Stub).not_to be nil
    expect(PasskitSdk::Io::Distribution::Stub).not_to be nil
    expect(PasskitSdk::Io::Jobs::Stub).not_to be nil
    expect(PasskitSdk::Io::Integrations::Stub).not_to be nil
    expect(PasskitSdk::Io::Templates::Stub).not_to be nil
    expect(PasskitSdk::Flights::Stub).not_to be nil
    expect(PasskitSdk::Members::Stub).not_to be nil
    expect(PasskitSdk::Raw::Stub).not_to be nil
    expect(PasskitSdk::SingleUseCoupons::Stub).not_to be nil
    expect(PasskitSdk::Widget::Stub).not_to be nil
  end
end
