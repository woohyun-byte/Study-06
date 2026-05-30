<!-- Created: 2026-05-30 18:07:00 -->
# Study-06 — 쇼핑 리스트 앱

Vibe Coding 학습 프로젝트 — 순수 HTML/CSS/JS로 만든 쇼핑 리스트 웹 앱

## 폴더 구조

```
Study-06/
├── index.html            # 쇼핑 리스트 앱 (HTML + CSS + JS)
├── guestbook.html        # 방명록 앱 (Supabase 연동)
├── supabase-setup.sql    # Supabase 테이블 + RLS 설정 SQL
├── .gitignore
└── README.md
```

## 쇼핑 리스트 주요 기능

- 항목 추가 / 삭제
- 체크 완료 처리 (취소선 + 녹색 표시)
- 완료된 항목 일괄 삭제
- `localStorage`로 새로고침 후에도 데이터 유지

## 방명록 주요 기능

- 이름 + 메시지 작성 (누구나)
- 전체 글 최신순 조회 (누구나)
- Supabase PostgreSQL 저장 + RLS 보안 정책 적용

## 실행 방법

별도 빌드 없이 각 HTML 파일을 브라우저에서 바로 열면 됩니다.

방명록은 Supabase 연동이 필요합니다. `supabase-setup.sql`을 Supabase SQL Editor에서 먼저 실행하세요.
