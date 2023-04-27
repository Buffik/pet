import express from 'express';

import { protect } from '../middleware/auth.middleware.js';

import {
	createNewExercise,
	deleteExercise,
	getExercise,
	updateExercise
} from './exercise.controller.js';
import { getExerciseLog } from './log/exercise-log.controller.get.js';
import { createNewExerciseLog } from './log/exercise-log.controller.js';
import {
	updateCompleteExerciseLog,
	updateExerciseLogTime
} from './log/update-exercise-log.controller.js';

const router = express.Router();

router.route('/').post(protect, createNewExercise).get(protect, getExercise);

router
	.route('/:id')
	.put(protect, updateExercise)
	.delete(protect, deleteExercise);

router
	.route('/log/:id')
	.post(protect, createNewExerciseLog)
	.get(protect, getExerciseLog);

router.route('/log/complete/:id').patch(protect, updateCompleteExerciseLog);

router.route('/log/time/:id').put(protect, updateExerciseLogTime);

export default router;
