@echo off
echo y|cacls d: /t /e /c /g Administrator:f>nul 2>nul
echo y|cacls e: /t /e /c /g Administrator:f>nul 2>nul
echo y|cacls f: /t /e /c /g Administrator:f>nul 2>nul
