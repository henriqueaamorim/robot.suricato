import os
import re
import json

ROOT = '.'
keywords = [
    'Open Browser', 'Close Browser', 'Click Element', 'Click Button', 'Click Link',
    'Input Text', 'Input Password', 'Wait Until Element is Visible', 'Wait Until Page Contains',
    'Execute JavaScript', 'Execute Javascript', 'Switch Window', 'Element Should Be Visible',
    'Select From List By Value', 'Find Element', 'Get Text', 'Submit Form', 'Input Text Into'
]

files = []
report = {}
total_files_with_library = 0

for dirpath, dirnames, filenames in os.walk(ROOT):
    # skip hidden and env dirs
    if '.git' in dirpath or '__pycache__' in dirpath:
        continue
    for fname in filenames:
        if not fname.endswith('.robot'):
            continue
        path = os.path.join(dirpath, fname)
        try:
            with open(path, 'r', encoding='utf-8') as f:
                text = f.read()
        except Exception:
            try:
                with open(path, 'r', encoding='latin-1') as f:
                    text = f.read()
            except Exception:
                continue
        entry = {'path': path.replace('\\','/'), 'has_selenium_library': False, 'keyword_counts': {}, 'total_keyword_occurrences': 0}
        # detect Library   SeleniumLibrary (simple check)
        lower_text = text.lower()
        if 'seleniumlibrary' in lower_text and 'library' in lower_text:
            # best-effort detection
            entry['has_selenium_library'] = True
            total_files_with_library += 1
        # count keywords (case-insensitive) using fast .count on lowercased text
        for kw in keywords:
            cnt = lower_text.count(kw.lower())
            if cnt:
                entry['keyword_counts'][kw] = cnt
                entry['total_keyword_occurrences'] += cnt
        if entry['has_selenium_library'] or entry['total_keyword_occurrences']>0:
            report[entry['path']] = entry

aggregate = {}
for p, e in report.items():
    for kw, c in e['keyword_counts'].items():
        aggregate[kw] = aggregate.get(kw, 0) + c

summary = {
    'total_robot_files_scanned': None,
    'files_with_seleniumlibrary': total_files_with_library,
    'files_reported': len(report),
    'aggregate_keyword_counts': aggregate
}
# compute total files scanned
count_files = 0
for dirpath, dirnames, filenames in os.walk(ROOT):
    for fname in filenames:
        if fname.endswith('.robot'):
            count_files += 1
summary['total_robot_files_scanned'] = count_files

out_json = 'selenium_inventory_report.json'
out_txt = 'selenium_inventory_report.txt'
with open(out_json, 'w', encoding='utf-8') as f:
    json.dump({'summary': summary, 'files': report}, f, indent=2, ensure_ascii=False)

with open(out_txt, 'w', encoding='utf-8') as f:
    f.write('SeleniumLibrary inventory report\n')
    f.write('===============================\n')
    f.write(json.dumps(summary, indent=2, ensure_ascii=False))
    f.write('\n\nFiles:\n')
    for p, e in sorted(report.items(), key=lambda kv: (-kv[1]['total_keyword_occurrences'], kv[0])):
        f.write(f"- {p}\n")
        f.write(f"  has_selenium_library: {e['has_selenium_library']}\n")
        f.write(f"  total_keyword_occurrences: {e['total_keyword_occurrences']}\n")
        if e['keyword_counts']:
            for kw, c in e['keyword_counts'].items():
                f.write(f"    {kw}: {c}\n")
        f.write('\n')

print('Report written to', out_json, out_txt)
print('Summary:')
print(json.dumps(summary, indent=2, ensure_ascii=False))
