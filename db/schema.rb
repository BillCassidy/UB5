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

ActiveRecord::Schema.define(:version => 20131024230903) do

  create_table "datalines", :force => true do |t|
    t.integer  "peptide_id"
    t.text     "tsv_string"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "datalines", ["peptide_id"], :name => "index_datalines_on_peptide_id"

  create_table "peptides", :force => true do |t|
    t.string   "aseq"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "mod_loc"
  end

  create_table "proteins", :force => true do |t|
    t.string   "sp_or_tr"
    t.string   "accession"
    t.string   "description"
    t.text     "aa_sequence"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

end
