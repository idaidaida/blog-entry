class EntriesController < ApplicationController

    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find(params[:id])
    end

    def show_unapproved
        @entries = []
        Entry.all.each do |entry|
            @entries.push(entry) if entry.comments.exists?(status: "unapproved")
        end
    end

end
