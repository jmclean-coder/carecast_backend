class Api::V1::JournalEntriesController < ApplicationController
    def index

    end

    def show

    end

    def create 

    end

    def update

    end

    def destroy

    end

    private

    def journal_entry_params
        params.require(:journal_entry).permit(:title, :content)
    end
end
