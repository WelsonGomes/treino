/*
  Warnings:

  - A unique constraint covering the columns `[nome,estadoid]` on the table `tbcidade` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[nome]` on the table `tbestado` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[uf]` on the table `tbestado` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "tbcidade_nome_estadoid_key" ON "tbcidade"("nome", "estadoid");

-- CreateIndex
CREATE UNIQUE INDEX "tbestado_nome_key" ON "tbestado"("nome");

-- CreateIndex
CREATE UNIQUE INDEX "tbestado_uf_key" ON "tbestado"("uf");
