import express from 'express';

import { protect } from '../middleware/auth.middleware.js';

import { getUserProfiler } from './user.controller.js';

const router = express.Router();

router.route('/profile').get(protect, getUserProfiler);

export default router;
