#!/bin/bash

# Simple PDF Conversion Script for Career Guidance Application
echo "🎓 Converting Career Guidance Application Documentation to PDF..."

# Create output directory
mkdir -p pdf_output

# Method 1: Try using pandoc with HTML output first, then convert to PDF
echo "📄 Converting documents to HTML first..."

# Convert to HTML
pandoc COLLEGE_PRESENTATION.md -o pdf_output/COLLEGE_PRESENTATION.html --toc --toc-depth=3
pandoc NAVIGATION_GUIDE.md -o pdf_output/NAVIGATION_GUIDE.html --toc --toc-depth=2
pandoc DIAGRAMS.md -o pdf_output/DIAGRAMS.html --toc --toc-depth=2
pandoc FINAL_PRESENTATION_SUMMARY.md -o pdf_output/FINAL_PRESENTATION_SUMMARY.html --toc --toc-depth=2
pandoc DEMO_SCRIPT.md -o pdf_output/DEMO_SCRIPT.html --toc --toc-depth=2
pandoc PRESENTATION_DOCUMENTATION.md -o pdf_output/PRESENTATION_DOCUMENTATION.html --toc --toc-depth=3
pandoc PRESENTATION_SUMMARY.md -o pdf_output/PRESENTATION_SUMMARY.html --toc --toc-depth=2
pandoc PRESENTATION_CHECKLIST.md -o pdf_output/PRESENTATION_CHECKLIST.html --toc --toc-depth=2

echo "✅ HTML conversion completed!"
echo "📁 HTML files are saved in the 'pdf_output' directory:"
echo ""
echo "📄 COLLEGE_PRESENTATION.html - Complete technical documentation"
echo "📄 NAVIGATION_GUIDE.html - Step-by-step navigation instructions"
echo "📄 DIAGRAMS.html - All system diagrams"
echo "📄 FINAL_PRESENTATION_SUMMARY.html - Complete presentation summary"
echo "📄 DEMO_SCRIPT.html - Demo script with talking points"
echo "📄 PRESENTATION_DOCUMENTATION.html - Comprehensive documentation"
echo "📄 PRESENTATION_SUMMARY.html - Quick overview"
echo "📄 PRESENTATION_CHECKLIST.html - Final checklist"
echo ""

echo "💡 To convert HTML to PDF, you can:"
echo "   1. Open the HTML files in your browser"
echo "   2. Press Ctrl+P (or Cmd+P on Mac)"
echo "   3. Select 'Save as PDF'"
echo "   4. Save the PDF files"
echo ""
echo "🎓 Alternative methods:"
echo "   1. Use VS Code with 'Markdown PDF' extension"
echo "   2. Use online converters like:"
echo "      - https://www.markdowntopdf.com/"
echo "      - https://md-to-pdf.fly.dev/"
echo "   3. Use browser print-to-PDF feature"
echo ""
echo "🚀 Your documentation is ready for presentation!"
