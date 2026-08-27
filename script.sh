cd ~/
gh repo clone PetrZhitnikov/claude-instructions
cd claude-instructions
git clean -fd && git reset --hard @{u} && git fetch && git rebase
rm ~/.claude/CLAUDE.md
ln -s ~/claude-instructions/CLAUDE.md ~/.claude/CLAUDE.md
cat ~/.claude/CLAUDE.md
