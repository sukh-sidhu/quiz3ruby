#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do
    ActiveRecord::Schema.define(version: 20171117180851) do
    
      create_table "comments", force: :cascade do |t|
        t.string "name"
        t.text "comment"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.integer "post_id"
      end
    
      create_table "posts", force: :cascade do |t|
        t.string "title"
        t.text "content"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end
    
    end