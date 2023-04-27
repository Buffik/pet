/*
  Warnings:

  - You are about to drop the column `exerciseLogId` on the `Exercise` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Exercise" DROP CONSTRAINT "Exercise_exerciseLogId_fkey";

-- AlterTable
ALTER TABLE "Exercise" DROP COLUMN "exerciseLogId",
ADD COLUMN     "exercise_log_id" INTEGER;

-- AddForeignKey
ALTER TABLE "Exercise" ADD CONSTRAINT "Exercise_exercise_log_id_fkey" FOREIGN KEY ("exercise_log_id") REFERENCES "Exercise_log"("id") ON DELETE SET NULL ON UPDATE CASCADE;
