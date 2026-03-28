.PHONY: run clean help

run:
	@./src/analyzer.sh

clean:
	@rm -f log_analysis_report.txt

help:
	@echo "Available commands:"
	@echo "  make run   - Run log analyzer"
	@echo "  make clean - Remove report files"