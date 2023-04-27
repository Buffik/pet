/*
  Warnings:

  - You are about to drop the column `exercise_log_id` on the `Exercise_time` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Exercise_time" DROP CONSTRAINT "Exercise_time_exercise_log_id_fkey";

-- AlterTable
ALTER TABLE "Exercise_time" DROP COLUMN "exercise_log_id",
ADD COLUMN     "exerciseLogId" INTEGER;

-- AddForeignKey
ALTER TABLE "Exercise_time" ADD CONSTRAINT "Exercise_time_exerciseLogId_fkey" FOREIGN KEY ("exerciseLogId") REFERENCES "Exercise_log"("id") ON DELETE SET NULL ON UPDATE CASCADE;
