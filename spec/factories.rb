FactoryGirl.define do
    factory :comment do
    end
    
    factory :user do
        sequence :email do |n|
            "dummyEmail#{n}@mail.com"
        end
        password "secretPassword"
        password_confirmation "secretPassword"
    end
    
    factory :gram do
        message "hello"
        picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png'), 'image/png') }
        
        association :user
    end
end