CREATE INDEX "course_index" ON "courses" ("department","semester","title");
CREATE INDEX "enrollments_index_stu" ON "enrollments" ("student_id");
CREATE INDEX "enrollments_index_cor" ON "enrollments" ("course_id");
