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

ActiveRecord::Schema.define(:version => 20110412182042) do

  create_table "class_students", :force => true do |t|
    t.integer  "class_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_published"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", :force => true do |t|
    t.integer "teacher_id"
    t.text    "content"
    t.integer "class_id",   :null => false
  end

  add_index "news", ["class_id"], :name => "fk_news_Klasy1"
  add_index "news", ["teacher_id"], :name => "idNauczyciela"

  create_table "plans", :force => true do |t|
    t.string  "name",     :limit => 45
    t.time    "hours"
    t.integer "class_id",               :null => false
  end

  add_index "plans", ["class_id"], :name => "fk_plans_classes1"

  create_table "school_classes", :force => true do |t|
    t.string  "class_name",  :limit => 45, :null => false
    t.integer "tutor_id"
    t.string  "profile",     :limit => 45
    t.integer "nb_students"
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_documents", :force => true do |t|
    t.boolean  "is_published"
    t.integer  "task_id"
    t.integer  "document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.integer "teacher_id"
    t.integer "plan_id"
  end

  add_index "tasks", ["plan_id"], :name => "idPlanu"
  add_index "tasks", ["teacher_id"], :name => "idNauczyciela"

  create_table "teachers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teaching", :force => true do |t|
    t.integer "teacher_id"
    t.integer "class_id",   :null => false
  end

  add_index "teaching", ["class_id"], :name => "fk_teaching_classes1"
  add_index "teaching", ["teacher_id"], :name => "idNauczyciel"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
