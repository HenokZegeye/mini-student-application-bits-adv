class ApplicantsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        applicants = Applicant.all
        render json: {data: applicants}
    end
    
    def create
        applicant = Applicant.new(applicant_params)

        if applicant.save
            render json: {data: applicant}, status: :created
        else
            render json: {errors: applicant.errors}
        end
    end


    private

    def applicant_params
        params.require(:applicant).permit(:first_name, :middle_name, :last_name, :email)
    end
end
