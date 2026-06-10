-- Pedro gas, agua e racao - schema inicial seguro
-- Rodar no SQL Editor do Supabase depois que o projeto for criado.

create table if not exists public.business_state (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.business_state enable row level security;

drop policy if exists "authenticated users can read business state" on public.business_state;
create policy "authenticated users can read business state"
on public.business_state
for select
to authenticated
using (true);

drop policy if exists "authenticated users can insert business state" on public.business_state;
create policy "authenticated users can insert business state"
on public.business_state
for insert
to authenticated
with check (true);

drop policy if exists "authenticated users can update business state" on public.business_state;
create policy "authenticated users can update business state"
on public.business_state
for update
to authenticated
using (true)
with check (true);

insert into public.business_state (id, data)
values ('main', '{}'::jsonb)
on conflict (id) do nothing;
