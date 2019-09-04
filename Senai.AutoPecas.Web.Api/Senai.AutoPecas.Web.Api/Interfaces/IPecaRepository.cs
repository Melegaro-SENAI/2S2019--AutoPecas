using Senai.AutoPecas.Web.Api.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.AutoPecas.Web.Api.Interfaces
{
    interface IPecaRepository
    {
        List<Pecas> Listar();

        void Cadastrar(Pecas pecas);

        Pecas BuscarPorId(int id);

        void Atualizar(Pecas pecas);

        void Deletar(int id);

    }
}
