# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120426025348) do

  create_table "collaborators", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "collaborators", ["email"], :name => "index_collaborators_on_email", :unique => true
  add_index "collaborators", ["name"], :name => "index_collaborators_on_name"

  create_table "links", :force => true do |t|
    t.integer  "collaborator_id"
    t.integer  "project_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "links", ["collaborator_id", "project_id"], :name => "index_links_on_collaborator_id_and_project_id", :unique => true
  add_index "links", ["collaborator_id"], :name => "index_links_on_collaborator_id"
  add_index "links", ["project_id"], :name => "index_links_on_project_id"

  create_table "posts", :force => true do |t|
    t.integer  "collaborator_id"
    t.integer  "project_id"
    t.text     "content"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "posts", ["collaborator_id"], :name => "index_posts_on_collaborator_id"
  add_index "posts", ["created_at"], :name => "index_posts_on_created_at"
  add_index "posts", ["project_id"], :name => "index_posts_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start"
    t.date     "end"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "projects", ["name"], :name => "index_projects_on_name", :unique => true

end
