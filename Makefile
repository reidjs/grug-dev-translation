update:
	pandoc grug_dev_translation.md -o index.html

open:
	open index.html

deploy:
	make update
	git add -A
	git commit -m "automated deploy script commit"
	git push