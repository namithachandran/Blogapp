# user
class User < ApplicationRecord
  def self.insert(job_title)
    job_title = job_title
    # hash = {"Level1"=>["junior_developer","Senior_developer"],"Level2"=>["project_lead","Technical_lead"], "Level3"=>["CEO","COO"]}
    hash = { Level1: ["junior_developer","Senior_developer"], Level2: ["project_lead","Technical_lead"], Level3: ["CEO","COO"] }
    hash.each do |key, values|
      values.each do |value|
        if value == job_title
        # if values.include?(value)
          User.create(level_of_excellence: key, job_title: value)
        end
      end
    end
  end
end
