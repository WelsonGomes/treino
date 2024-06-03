-- CreateTable
CREATE TABLE "tbestado" (
    "id" INTEGER NOT NULL,
    "nome" VARCHAR(100) NOT NULL,
    "uf" VARCHAR(2) NOT NULL,
    "pais" VARCHAR(100) NOT NULL,

    CONSTRAINT "tbestado_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tbcidade" (
    "id" INTEGER NOT NULL,
    "nome" VARCHAR(100) NOT NULL,
    "estadoid" INTEGER NOT NULL,

    CONSTRAINT "tbcidade_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tbcliente" (
    "id" INTEGER NOT NULL,
    "cnpjcpf" VARCHAR(14) NOT NULL,
    "razaosocial" VARCHAR(200) NOT NULL,
    "fantasia" VARCHAR(200),
    "datacriacao" TIMESTAMP(3) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "telefone" VARCHAR(10),
    "celular" VARCHAR(11),
    "estadoid" INTEGER NOT NULL,
    "cidadeid" INTEGER NOT NULL,
    "cep" VARCHAR(8),
    "logradouro" VARCHAR(100),
    "numero" INTEGER,
    "bairro" VARCHAR(100),
    "complemento" VARCHAR(100),
    "datacadastro" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "tbcliente_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "tbcliente_cnpjcpf_key" ON "tbcliente"("cnpjcpf");

-- AddForeignKey
ALTER TABLE "tbcidade" ADD CONSTRAINT "tbcidade_estadoid_fkey" FOREIGN KEY ("estadoid") REFERENCES "tbestado"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tbcliente" ADD CONSTRAINT "tbcliente_estadoid_fkey" FOREIGN KEY ("estadoid") REFERENCES "tbestado"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tbcliente" ADD CONSTRAINT "tbcliente_cidadeid_fkey" FOREIGN KEY ("cidadeid") REFERENCES "tbcidade"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
