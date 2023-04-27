/*
  Warnings:

  - You are about to drop the column `exercise_log_id` on the `Exercise` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Exercise" DROP CONSTRAINT "Exercise_exercise_log_id_fkey";

-- AlterTable
ALTER TABLE "Exercise" DROP COLUMN "exercise_log_id",
ADD COLUMN     "exerciseLogId" INTEGER;

-- AddForeignKey
ALTER TABLE "Exercise" ADD CONSTRAINT "Exercise_exerciseLogId_fkey" FOREIGN KEY ("exerciseLogId") REFERENCES "Exercise_log"("id") ON DELETE SET NULL ON UPDATE CASCADE;
