class Api::V1::JournalEntriesController < ApplicationController
    
    def index
        journal_entries = JournalEntry.where(user_id: current_user.id)
        render json: journal_entries
    end

    # def show
    #     journal_entry = JournalEntry.find(params)
    # end
    
    def create
        journal = JournalEntry.create(journal_entry_params)
        if journal.valid?
            render json: JournalEntrySerializer.new(journal), status: :created
        else
            render json: { error: 'Failed to create', messages: journal.errors.full_messages }, status: :not_acceptable
        end
    end

    def update
        journal = Journal.find(params[:id])
        journal.update
        if journal.valid?
            render json: JournalEntrySerializer.new(journal), status: :accepted
        else
            render json: { error: 'Failed to update', messages: journal.errors.full_messages }, status: :not_acceptable
        end

    end

    def destroy
        journal = Journal.find(params[:id])
        journal.destroy

    end

    private

    def journal_entry_params
        params.require(:journal_entry).permit(:title, :content, :user_id)
    end
end
