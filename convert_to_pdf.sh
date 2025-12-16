#!/bin/bash

# Career Guidance Application - PDF Conversion Script
# This script converts markdown files to PDF for college presentation

echo "🎓 Converting Career Guidance Application Documentation to PDF..."

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "❌ Pandoc is not installed. Please install pandoc first:"
    echo "   macOS: brew install pandoc"
    echo "   Ubuntu: sudo apt-get install pandoc"
    echo "   Windows: Download from https://pandoc.org/installing.html"
    exit 1
fi

# Create output directory
mkdir -p pdf_output

# Convert main presentation document
echo "📄 Converting COLLEGE_PRESENTATION.md..."
pandoc COLLEGE_PRESENTATION.md \
    -o pdf_output/COLLEGE_PRESENTATION.pdf \
    --toc \
    --toc-depth=3

# Convert navigation guide
echo "📄 Converting NAVIGATION_GUIDE.md..."
pandoc NAVIGATION_GUIDE.md \
    -o pdf_output/NAVIGATION_GUIDE.pdf \
    --toc \
    --toc-depth=2

# Convert diagrams document
echo "📄 Converting DIAGRAMS.md..."
pandoc DIAGRAMS.md \
    -o pdf_output/DIAGRAMS.pdf \
    --toc \
    --toc-depth=2

# Convert final presentation summary
echo "📄 Converting FINAL_PRESENTATION_SUMMARY.md..."
pandoc FINAL_PRESENTATION_SUMMARY.md \
    -o pdf_output/FINAL_PRESENTATION_SUMMARY.pdf \
    --toc \
    --toc-depth=2

# Convert demo script
echo "📄 Converting DEMO_SCRIPT.md..."
pandoc DEMO_SCRIPT.md \
    -o pdf_output/DEMO_SCRIPT.pdf \
    --toc \
    --toc-depth=2

# Convert presentation documentation
echo "📄 Converting PRESENTATION_DOCUMENTATION.md..."
pandoc PRESENTATION_DOCUMENTATION.md \
    -o pdf_output/PRESENTATION_DOCUMENTATION.pdf \
    --toc \
    --toc-depth=3

# Convert presentation summary
echo "📄 Converting PRESENTATION_SUMMARY.pdf..."
pandoc PRESENTATION_SUMMARY.md \
    -o pdf_output/PRESENTATION_SUMMARY.pdf \
    --toc \
    --toc-depth=2

echo "✅ PDF conversion completed!"
echo "📁 PDF files are saved in the 'pdf_output' directory:"
echo ""
echo "📄 COLLEGE_PRESENTATION.pdf - Complete technical documentation"
echo "📄 NAVIGATION_GUIDE.pdf - Step-by-step navigation instructions"
echo "📄 DIAGRAMS.pdf - All system diagrams"
echo "📄 FINAL_PRESENTATION_SUMMARY.pdf - Complete presentation summary"
echo "📄 DEMO_SCRIPT.pdf - Demo script with talking points"
echo "📄 PRESENTATION_DOCUMENTATION.pdf - Comprehensive documentation"
echo "📄 PRESENTATION_SUMMARY.pdf - Quick overview"
echo ""
echo "🎓 Ready for your college presentation!"
echo ""
echo "💡 Alternative: If you don't have pandoc, you can:"
echo "   1. Open the markdown files in VS Code"
echo "   2. Install 'Markdown PDF' extension"
echo "   3. Right-click and select 'Export (pdf)'"
echo ""
echo "🚀 Good luck with your presentation!"
