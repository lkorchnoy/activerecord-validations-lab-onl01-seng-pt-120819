class TitleValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title.match?("Won't Believe", "Secret", "Top 10", "Guess")
            record.errors[:title] << "Invalid if not clickbait"
        end
    end
end
