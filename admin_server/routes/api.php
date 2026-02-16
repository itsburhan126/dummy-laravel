<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\BannerController;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\SettingController;
use App\Http\Controllers\Api\PageController;
use App\Http\Controllers\Api\LeaderboardController;
use App\Http\Controllers\Api\TransactionController;

// Auth Routes
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/google-login', [AuthController::class, 'googleLogin']);
Route::post('/check-user', [AuthController::class, 'checkUser']);

Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/delete-account', [AuthController::class, 'deleteAccount']);
    Route::get('/user', [AuthController::class, 'user']);
    Route::post('/add-referrer', [AuthController::class, 'addReferrer']);

    // Leaderboard
    Route::get('/leaderboard', [LeaderboardController::class, 'index']);

    // Notifications
    Route::get('/notifications', [App\Http\Controllers\Api\NotificationController::class, 'index']);
    Route::post('/notifications/mark-read', [App\Http\Controllers\Api\NotificationController::class, 'markAsRead']);

    // Transactions
    Route::get('/transactions', [TransactionController::class, 'index']);
});

// Public APIs for App
Route::get('/banners', [BannerController::class, 'index']);

// Settings
Route::get('/settings/ads', [SettingController::class, 'index']);
Route::get('/settings/general', [SettingController::class, 'general']);
Route::get('/settings/api', [SettingController::class, 'api']);
Route::get('/settings/offerwall', [SettingController::class, 'offerwall']);

// Pages
Route::get('/pages/{slug}', [PageController::class, 'show']);
