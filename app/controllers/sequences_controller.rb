class SequencesController < ApplicationController



def create

    @sequence = Sequence.new
    @sequence.year=Time.current.year
    @sequence.number=1
    if !Sequence.exists?(year: Time.current.year) 
        if !@sequence.save 
            raise "error"
        end
    end

    redirect_to '/quality_controls'
end


end
