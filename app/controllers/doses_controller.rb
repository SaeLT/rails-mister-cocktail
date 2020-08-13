class DosesController < ApplicationController
    def new
        @dose = Dose.new
    end

    def create
        @dose = Dose.new(dose_params)

        if @dose.save
        redirect_to @dose, notice: 'A dose was successfully added.'
        else
        render :new
        end
    end
end
