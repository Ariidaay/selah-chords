-- Selah Chords v7: ejecutar en Supabase > SQL Editor > New query.
create table if not exists public.community_songs (
  id uuid primary key default gen_random_uuid(),
  title text not null check (char_length(title) between 1 and 160),
  key text not null default 'C',
  lyrics text not null check (char_length(lyrics) <= 30000),
  author text not null check (char_length(author) between 1 and 70),
  author_id uuid not null references auth.users(id) on delete cascade,
  published_at timestamptz not null default now()
);

alter table public.community_songs enable row level security;

drop policy if exists "Anyone can read community songs" on public.community_songs;
create policy "Anyone can read community songs"
  on public.community_songs for select using (true);

drop policy if exists "Signed-in users can publish songs" on public.community_songs;
create policy "Signed-in users can publish songs"
  on public.community_songs for insert to authenticated
  with check (auth.uid() = author_id);

drop policy if exists "Authors can update their songs" on public.community_songs;
create policy "Authors can update their songs"
  on public.community_songs for update to authenticated
  using (auth.uid() = author_id) with check (auth.uid() = author_id);

drop policy if exists "Authors can delete their songs" on public.community_songs;
create policy "Authors can delete their songs"
  on public.community_songs for delete to authenticated
  using (auth.uid() = author_id);

-- Favoritos sincronizables por usuario (la interfaz v7 aún conserva favoritos localmente).
create table if not exists public.user_favorites (
  user_id uuid not null references auth.users(id) on delete cascade,
  song_id uuid not null references public.community_songs(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (user_id, song_id)
);
alter table public.user_favorites enable row level security;
drop policy if exists "Users manage their own favorites" on public.user_favorites;
create policy "Users manage their own favorites"
  on public.user_favorites for all to authenticated
  using (auth.uid() = user_id) with check (auth.uid() = user_id);
