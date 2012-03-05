require "rubygems"
require "kickstarter-monitor/version"
require 'mongo'
require 'kickstarter'

module Kickstarter
  module Monitor
    class Service
      def initialize
        @db = Mongo::Connection.new.db("kickstarter")
      end

      def execute
        coll = @db.collection("projects")
        Kickstarter.by_list(:recommended) do |project|
          coll.insert(project.to_hash)
          puts project.name
        end
      end
    end
  end
end
