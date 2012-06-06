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

ActiveRecord::Schema.define(:version => 20120126125349) do

  create_table "children", :force => true do |t|
    t.string   "uuid"
    t.string   "S_name"
    t.date     "DOB"
    t.string   "F_name"
    t.string   "M_name"
    t.integer  "clas"
    t.string   "Email"
    t.string   "phone"
    t.string   "A_salary"
    t.string   "PAN_no"
    t.integer  "marks"
    t.integer  "attendance"
    t.integer  "due"
    t.string   "country"
    t.string   "state"
    t.boolean  "declaration"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :id => false, :force => true do |t|
    t.string   "uuid",       :null => false
    t.string   "name"
    t.integer  "rollno"
    t.integer  "clas"
    t.integer  "marks"
    t.integer  "attendance"
    t.integer  "due"
    t.date     "DOB"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
