public class JogadorFutebolAmericano {
    private String nome;
    private String posicao;
    private int numeroDeTouchdowns;
    private int numeroDeJardas;
    private int numeroDeJogos;

    public JogadorFutebolAmericano(String nome, String posicao, int numeroDeTouchdowns, int numeroDeJardas,
            int numeroDeJogos) {
        this.nome = nome;
        this.posicao = posicao;
        this.numeroDeTouchdowns = numeroDeTouchdowns;
        this.numeroDeJardas = numeroDeJardas;
        this.numeroDeJogos = numeroDeJogos;
    }

    public void marcarTouchdown() {
        numeroDeTouchdowns++;
        System.out.println(nome + " marcou um touchdown! Total de touchdowns: " + numeroDeTouchdowns);
    }

    public void correrJardas(int jardas) {
        numeroDeJardas += jardas;
        System.out.println(nome + " correu " + jardas + " jardas. Total de jardas: " + numeroDeJardas);
    }

    public double calcularMediaJardasPorJogo() {
        if (numeroDeJogos > 0) {
            return (double) numeroDeJardas / numeroDeJogos;
        } else {
            return 0;
        }
    }

    public void exibirEstatisticas() {
        System.out.println("Nome: " + nome);
        System.out.println("Posição: " + posicao);
        System.out.println("Touchdowns: " + numeroDeTouchdowns);
        System.out.println("Jardas: " + numeroDeJardas);
        System.out.println("Jogos: " + numeroDeJogos);
        System.out.println("Média de jardas por jogo: " + calcularMediaJardasPorJogo());
    }

    public boolean estaLesionado() {

        return numeroDeJogos > 10;
    }
}