-- Supabase SQL
create table if not exists investor_profiles (
  id uuid default uuid_generate_v4() primary key,
  user_id uuid references auth.users(id),
  persona text,
  created_at timestamp default current_timestamp
);