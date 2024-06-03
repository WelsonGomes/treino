-- AlterTable
CREATE SEQUENCE tbcidade_id_seq;
ALTER TABLE "tbcidade" ALTER COLUMN "id" SET DEFAULT nextval('tbcidade_id_seq');
ALTER SEQUENCE tbcidade_id_seq OWNED BY "tbcidade"."id";

-- AlterTable
CREATE SEQUENCE tbcliente_id_seq;
ALTER TABLE "tbcliente" ALTER COLUMN "id" SET DEFAULT nextval('tbcliente_id_seq');
ALTER SEQUENCE tbcliente_id_seq OWNED BY "tbcliente"."id";

-- AlterTable
CREATE SEQUENCE tbestado_id_seq;
ALTER TABLE "tbestado" ALTER COLUMN "id" SET DEFAULT nextval('tbestado_id_seq');
ALTER SEQUENCE tbestado_id_seq OWNED BY "tbestado"."id";
