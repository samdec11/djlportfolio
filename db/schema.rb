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

ActiveRecord::Schema.define(:version => 20130721210124) do

  create_table "exhibitions", :force => true do |t|
    t.string   "kind"
    t.string   "first_column"
    t.string   "second_column"
    t.string   "third_column"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "links", :force => true do |t|
    t.string   "display"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "paintings", :force => true do |t|
    t.string   "name"
    t.text     "image"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "papers", :force => true do |t|
    t.string   "name"
    t.text     "image"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "first_column"
    t.string   "second_column"
    t.string   "third_column"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "teaching_positions", :force => true do |t|
    t.string   "first_column"
    t.string   "second_column"
    t.string   "third_column"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "artist_statement"
    t.text     "bio_image"
    t.text     "contact_image"
  end

end
