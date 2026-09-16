
CREATE TABLE IF notes NOT EXISTS notes (
    id bigserial PRIMARY KEY,
    title varchar(255) NOT NULL,
    body text NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT notes_title_not_blank
        CHECK (length(trim(title)) > 0 )
);