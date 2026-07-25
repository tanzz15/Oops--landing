@echo off
cd /d d:\SEMESTER 6\Game\FP\Lp
echo === GIThub Push Script ===
echo STEP 1: Checking auth...
gh auth token > auth_check.txt 2>&1
echo STEP 2: Pushing...
git push -u origin main --force > push_result.txt 2>&1
echo STEP 3: Done.
echo Done > script_complete.txt

