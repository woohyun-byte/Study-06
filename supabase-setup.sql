-- Created: 2026-05-30 18:48:45
-- 1. 테이블 생성
create table public.guestbook (
  id          uuid        primary key default gen_random_uuid(),
  name        text        not null check (char_length(name) between 1 and 50),
  message     text        not null check (char_length(message) between 1 and 500),
  created_at  timestamptz not null default now()
);

-- 2. RLS 활성화
alter table public.guestbook enable row level security;

-- 3. 누구나 읽기
create policy "Anyone can read"
  on public.guestbook
  for select
  to anon, authenticated
  using (true);

-- 4. 누구나 쓰기 (글자수 DB 레벨 재검증)
create policy "Anyone can insert"
  on public.guestbook
  for insert
  to anon, authenticated
  with check (
    char_length(name)    between 1 and 50  and
    char_length(message) between 1 and 500
  );

-- 5. 최신순 조회 인덱스
create index on public.guestbook (created_at desc);
