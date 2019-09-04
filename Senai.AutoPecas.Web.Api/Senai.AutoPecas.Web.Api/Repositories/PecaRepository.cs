using Senai.AutoPecas.Web.Api.Domains;
using Senai.AutoPecas.Web.Api.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.AutoPecas.Web.Api.Repositories
{
    public class PecaRepository : IPecaRepository
    {
        public List<Pecas> Listar()
        {
            using (AutoPecasContext ctx = new AutoPecasContext())
            {
                // select
                return ctx.Pecas.ToList();
            }
        }

        public void Cadastrar(Pecas pecas)
        {
            using (AutoPecasContext ctx = new AutoPecasContext())
            {
                // insert
                ctx.Pecas.Add(pecas);
                ctx.SaveChanges();
            }
        }

        // buscar por id
        public Pecas BuscarPorId(int id)
        {
            using (AutoPecasContext ctx = new AutoPecasContext())
            {
                return ctx.Pecas.FirstOrDefault(x => x.IdPeca == id);
            }
        }

        // atualizar
        public void Atualizar(Pecas pecas)
        {
            using (AutoPecasContext ctx = new AutoPecasContext())
            {
                Pecas PecaBuscada = ctx.Pecas.FirstOrDefault(x => x.IdPeca == pecas.IdPeca);
                // update pecas set nome = @nome 
                PecaBuscada.CodigoPeca = pecas.CodigoPeca;
                // insert - add, delete - remove, update - update
                ctx.Pecas.Update(PecaBuscada);
                // efetivar
                ctx.SaveChanges();
            }
        }

        // deletar
        public void Deletar(int id)
        {
            using (AutoPecasContext ctx = new AutoPecasContext())
            {
                // encontrar o item 
                // chave primaria da tabela
                Pecas pecas = ctx.Pecas.Find(id);
                // efetivar as mudanças no banco de dados
                ctx.SaveChanges();
            }
        }
    }
}
