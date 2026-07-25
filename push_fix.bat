@echo off
cd /d "D:\SEMESTER 6\Game\FP\Lp"
echo === GIT PUSH FIX SCRIPT ===
echo.

echo [1/3] Fetching remote...
git fetch origin 2>&1
echo.

echo [2/3] Merging with unrelated history...
git pull origin main --allow-unrelated-histories 2>&1
echo.

echo [3/3] Pushing to GitHub...
git push -u origin main 2>&1
echo.

echo === DONE ===
echo Jika ada error, perhatikan pesan di atas.
pause

