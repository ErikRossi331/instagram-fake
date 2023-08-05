-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01-Ago-2023 às 02:33
-- Versão do servidor: 10.5.19-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u623630776_instagram_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `admins`
--

INSERT INTO `admins` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2023-04-21 18:11:49', '2023-04-21 18:11:49', NULL),
(2, 1, '2023-04-21 18:12:01', '2023-04-21 18:12:01', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `configurations`
--

CREATE TABLE `configurations` (
  `id` int(10) UNSIGNED NOT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logotipo` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `nome_fantasia` varchar(255) DEFAULT NULL,
  `data_abertura` date DEFAULT NULL,
  `natureza_juridica` varchar(255) DEFAULT NULL,
  `representante` varchar(255) DEFAULT NULL,
  `documento` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `nacionalidade` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `contato_telefone` varchar(255) DEFAULT NULL,
  `contato_email` varchar(255) DEFAULT NULL,
  `link_facebook` varchar(255) DEFAULT NULL,
  `link_twitter` varchar(255) DEFAULT NULL,
  `link_instagram` varchar(255) DEFAULT NULL,
  `link_linkedin` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_07_08_000001_create_users_table', 1),
(2, '2020_07_08_000002_create_password_resets_table', 1),
(3, '2020_07_08_000003_create_pages_table', 1),
(4, '2020_07_08_000004_create_posts_table', 1),
(5, '2020_07_08_000005_create_roles_table', 1),
(6, '2020_07_08_000006_create_permissions_table', 1),
(7, '2020_07_08_000007_create_configurations_table', 1),
(8, '2020_07_08_000010_create_admins_table', 1),
(9, '2020_07_08_000013_create_post_categories_table', 1),
(10, '2020_07_08_000014_create_posts_post_categories_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `published` int(11) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `description`, `content`, `published`, `main_image`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'Postagem teste 1', '12300', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>postagem teste 1postagem teste 1</p>\r\n<p>postagem teste 1</p>\r\n<p>postagem teste 1postagem teste 1postagem teste 1</p>\r\n<p>postagem teste 1postagem teste 1postagem teste 1postagem teste 1postagem teste 1</p>\r\n</body>\r\n</html>', 1, '340984932_521402473532979_8817016128341225943_n.jpg', 'postagem-teste-1', 'Postagem teste 1', NULL, '177', '2023-04-21 18:49:34', '2023-05-04 14:01:29', '2023-05-04 14:01:29'),
(2, 6, 'publicacao_teste', '9000', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>teste teste teste teste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste testeteste teste teste</p>\r\n</body>\r\n</html>', 1, 'monumentos-turisticos.webp', 'publicacao-teste', 'publicacao_teste', NULL, '156', '2023-04-21 22:20:39', '2023-05-04 14:01:21', '2023-05-04 14:01:21'),
(3, 6, 'Teoria', '20000', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>\"A vida educa, mas a vida que educa n&atilde;o &eacute; uma quest&atilde;o de palavras, e sim de a&ccedil;&atilde;o. &Eacute; atividade\"&nbsp;</p>\r\n<p>&bull;</p>\r\n<p>Para aqueles que t&ecirc;m interesse em compreender um pouco mais sobre meus estudos, aqui est&aacute; um resumo do meu m&eacute;todo:&nbsp;</p>\r\n<p>✓</p>\r\n<p>1. Ele tende a formar o ser humano para ajudar a si mesmo por meio da instru&ccedil;&atilde;o, baseado em uma educa&ccedil;&atilde;o d&iacute;vida em tr&ecirc;s pilares: cabe&ccedil;a, cora&ccedil;&atilde;o e m&atilde;os. Al&eacute;m disso, segue o princ&iacute;pio de que a vida educa.&nbsp;</p>\r\n<p>✓</p>\r\n<p>2. Meu m&eacute;todo visa desenvolver as for&ccedil;as da intelig&ecirc;ncia gradualmente, de acordo com o desenvolvimento das emo&ccedil;&otilde;es e da moralidade, com a finalidade de criar o \"homem moral\"</p>\r\n</body>\r\n</html>', 1, 'IMG-20230504-WA0016.jpg', 'teoria', 'Teoria', NULL, '879', '2023-05-04 14:11:21', '2023-05-05 14:22:57', '2023-05-05 14:22:57'),
(4, 6, 'Foto aleatória 1', '33507', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, '200px-Pestalozzi.jpg', 'foto-aleatoria-1', 'Foto aleatória 1', NULL, '563', '2023-05-04 14:12:49', '2023-05-04 14:20:23', NULL),
(5, 6, 'Foto aleatória 2', '43023', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'images (8).jpeg', 'foto-aleatoria-2', 'Foto aleatória 2', NULL, '899', '2023-05-04 14:13:49', '2023-05-04 14:14:14', NULL),
(6, 6, 'Foto aleatória 3', '47777', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'images (9).jpeg', 'foto-aleatoria-3', 'Foto aleatória 3', NULL, '343', '2023-05-04 14:15:19', '2023-05-04 14:15:19', NULL),
(7, 6, 'Stanz', '32090', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Eu e meus pequenos do orfanato de Stanz. As tropas de Napole&atilde;o Bonaparte na Sui&ccedil;a incendiaram Stanz e deixaram in&uacute;meros jovens sem suas fam&iacute;lias, por&eacute;m, gra&ccedil;as ao novo governo fui capaz de reunir essas pobres crian&ccedil;as e dar-lhes a oportunidade de sair da mis&eacute;ria e da tristeza para conhecer o amor e a moral.&nbsp;</p>\r\n<p>Agrade&ccedil;o ao meu amigo @konrad_grob por pintar essa momento fant&aacute;stica! Continuaria seguindo com meu estudo e minha luta em prol da educa&ccedil;&atilde;o como um direito humano e um dever social para todos!&nbsp;</p>\r\n</body>\r\n</html>', 1, 'images (2).jpeg', 'stanz', 'Stanz', NULL, '1002', '2023-05-04 14:17:58', '2023-05-04 14:17:58', NULL),
(8, 6, 'Foto aleatória 4', '11222', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'images (7).jpeg', 'foto-aleatoria-5', 'Foto aleatória 5', NULL, '489', '2023-05-04 14:18:54', '2023-05-04 14:19:03', NULL),
(9, 6, 'Foto aleatória 5', '36123', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'images (5).jpeg', 'foto-aleatoria-5', 'Foto aleatória 5', NULL, '789', '2023-05-04 14:21:19', '2023-05-04 14:21:19', NULL),
(10, 6, 'Teoria', '47777', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>\"A vida educa, mas a vida que educa n&atilde;o &eacute; uma quest&atilde;o de palavras, e sim de a&ccedil;&atilde;o. &Eacute; atividade\"&nbsp;</p>\r\n<p>&bull;</p>\r\n<p>Para aqueles que t&ecirc;m interesse em compreender um pouco mais sobre meus estudos, aqui est&aacute; um resumo do meu m&eacute;todo:&nbsp;</p>\r\n<p>✓</p>\r\n<p>1. Ele tende a formar o ser humano para ajudar a si mesmo por meio da instru&ccedil;&atilde;o, baseado em uma educa&ccedil;&atilde;o d&iacute;vida em tr&ecirc;s pilares: cabe&ccedil;a, cora&ccedil;&atilde;o e m&atilde;os. Al&eacute;m disso, segue o princ&iacute;pio de que a vida educa.&nbsp;</p>\r\n<p>✓</p>\r\n<p>2. Meu m&eacute;todo visa desenvolver as for&ccedil;as da intelig&ecirc;ncia gradualmente, de acordo com o desenvolvimento das emo&ccedil;&otilde;es e da moralidade, com a finalidade de criar o \"homem moral\"</p>\r\n</body>\r\n</html>', 1, 'Picsart_23-05-18_13-25-18-548.jpg', 'teoria', 'Teoria', NULL, '678', '2023-05-05 14:25:15', '2023-05-18 13:26:02', NULL),
(11, 6, 'Rosseau - foto dele', '10987', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Um momento de tranquilidade desfrutando a natureza.</p>\r\n</body>\r\n</html>', 1, 'rousseau-natureza.webp', 'rosseau-foto-dele', 'Rosseau - foto dele', NULL, '987', '2023-05-06 10:52:53', '2023-05-06 10:52:53', NULL),
(12, 6, 'Rosseau - teoria geral - \"bom selvagem\"', '32567', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Voc&ecirc;s concordam ou discordam?</p>\r\n</body>\r\n</html>', 1, 'Post Instagram Motivação Bege e Preto (2).png', 'rosseau-teoria-geral-bom-selvagem', 'Rosseau - teoria geral - \"bom selvagem\"', NULL, '12555', '2023-05-06 11:00:17', '2023-05-06 11:00:49', NULL),
(13, 6, 'Rosseau - foto dele 2', '11289', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>BOM DIA... ACORDA</p>\r\n</body>\r\n</html>', 1, 'quem sou eu 22.jpg', 'rosseau-foto-dele-2', 'Rosseau - foto dele 2', NULL, '678', '2023-05-06 11:02:11', '2023-05-06 11:47:25', NULL),
(14, 6, 'Rosseau - Teoria Geral - Contrato Social e', '72009', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>N&atilde;o sei quem fez, por&eacute;m achei genial!</p>\r\n<p>De fato, a liberdade &eacute; uma das coisas que abordo na minha teoria. O que ocorre, em s&iacute;ntese, &eacute; que a<span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">&nbsp;raz&atilde;o faz o homem sair da liberdade natural e entrar na liberdade civil</span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">. Assim, ele vai reconhecer o outro como alter-ego e formar a sociedade por meio do Contrato Social</span><span style=\"font-family: Arial, sans-serif; font-size: 11pt;\">, em um Estado pautado na organiza&ccedil;&atilde;o.</span></p>\r\n</body>\r\n</html>', 1, 'Post Retrato para Instagram Checklist Elegante (1).png', 'rosseau-teoria-geral-contrato-social-e', 'Rosseau - Teoria Geral - Contrato Social e', NULL, '56087', '2023-05-06 11:10:13', '2023-05-06 11:10:13', NULL),
(15, 6, 'Rosseau - Teoria geral - Democracia participativa', '63542', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Post autoexplicativo tirado do meu Twitter&nbsp;</p>\r\n</body>\r\n</html>', 1, 'Post instagram metas ano novo tweet divertido sincero branco azul (1).png', 'rosseau-teoria-geral-democracia-participativa', 'Rosseau - Teoria geral - Democracia participativa', NULL, '5799', '2023-05-06 11:51:17', '2023-05-18 14:17:07', NULL),
(16, 6, 'Rosseau - Teoria Geral - Livro 1', '51263', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>BOM DIA... ACORDA...&nbsp;</p>\r\n</body>\r\n</html>', 1, 'Feed Instagram Post Loja Tons Pasteis (1).png', 'rosseau-teoria-geral-livro-1', 'Rosseau - Teoria Geral - Livro 1', NULL, '4569', '2023-05-06 11:53:35', '2023-05-06 11:53:35', NULL),
(17, 6, 'Rosseau - Teoria Geral - Livro 2', '52996', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Mais uma obra minha&nbsp;</p>\r\n</body>\r\n</html>', 1, 'White Pretty Minimal Product Instagram Feed Post (1).png', 'rosseau-teoria-geral-livro-2', 'Rosseau - Teoria Geral - Livro 2', NULL, '7896', '2023-05-06 11:55:04', '2023-05-06 11:55:04', NULL),
(18, 6, 'Rosseau - Teoria Geral - Livro 3', '45632', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'Moda mulher elegante tons neutros post para instagram (1).png', 'rosseau-teoria-geral-livro-3', 'Rosseau - Teoria Geral - Livro 3', NULL, '12333', '2023-05-06 11:56:10', '2023-05-06 11:56:10', NULL),
(19, 6, 'Rosseau - Pedagogia - Emilio', '54761', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, '_Post para instagram foto felicidade cachorro (2).png', 'rosseau-pedagogia-emilio', 'Rosseau - Pedagogia - Emilio', NULL, '3958', '2023-05-06 11:58:19', '2023-05-06 11:58:19', NULL),
(20, 6, 'Rosseau - Pedagogia - Principais pontos', '52314', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Boa noite, pessoal! Eu estava entediado, por isso resolvi fazer esse resumo em t&oacute;picos sobre meus pensamentos em rela&ccedil;&atilde;o a educa&ccedil;&atilde;o, algo que voc&ecirc;s me pedem bastante. Talvez amanh&atilde; eu fa&ccedil;a uma live explicando melhor sobre cada um desses pontos.&nbsp;</p>\r\n</body>\r\n</html>', 1, 'Checklist empresário bem sucedido Post Instagram Feed check (2).png', 'rosseau-pedagogia-principais-pontos', 'Rosseau - Pedagogia - Principais pontos', NULL, '9999', '2023-05-06 12:03:58', '2023-05-18 08:19:32', NULL),
(21, 6, 'Rosseau - Pedagogia - Criticas', '65233', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'Tweet Motivacional Instagram Post (2).png', 'rosseau-pedagogia-criticas', 'Rosseau - Pedagogia - Criticas', NULL, '56213', '2023-05-06 12:06:29', '2023-05-18 14:18:16', NULL),
(22, 6, 'Basedow - Quem sou eu', '37222', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Um pouquinho sobre mim :)</p>\r\n</body>\r\n</html>', 1, 'Instagram Post Quem Sou Eu Descritivo Psicólogo Prestador de Serviços Minimalista (2).png', 'basedow-quem-sou-eu', 'Basedow - Quem sou eu', NULL, '2267', '2023-05-16 14:30:15', '2023-05-16 14:53:23', NULL),
(23, 6, 'Basedow - Representação aos amigos dos homens', '24679', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'Tweet Twitter Frase (1).png', 'basedow-representacao-aos-amigos-dos-homens', 'Basedow - Representação aos amigos dos homens', NULL, '5188', '2023-05-16 14:32:48', '2023-05-16 14:32:48', NULL),
(24, 6, 'Basedow - Carreira e Pedagogia', '57001', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Definitivamente Philanthoropinum foi uma das minhas maiores conquistas. Eu fico muito satisfeito comigo pelo meu grande desempenho.&nbsp;</p>\r\n</body>\r\n</html>', 1, 'Post do Instagram checklist moderno rosa e laranja (3).png', 'basedow-carreira-e-pedagogia', 'Basedow - Carreira e Pedagogia', NULL, '1005', '2023-05-16 14:39:51', '2023-05-16 14:48:53', NULL),
(25, 6, 'La Chalotais', '44444', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 1, 'Post de Instagram dicas lista tópicos numerados básico cinza claro (3).png', 'la-chalotais', 'La Chalotais', NULL, '5361', '2023-05-16 15:08:30', '2023-05-16 15:08:30', NULL),
(26, 6, 'Condorcet - 1', '22211', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Qual &eacute; a opini&atilde;o de voc&ecirc;s?</p>\r\n</body>\r\n</html>', 1, 'Instagram Post Frase Tweet do Twitter Orgânico Azul (1).png', 'condorcet', 'Condorcet', NULL, '3461', '2023-05-16 15:10:51', '2023-05-16 15:11:02', NULL),
(27, 6, 'Condorcet - 2', '23456', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p class=\"MsoNormal\">Para os que j&aacute; est&atilde;o acordados a essa hora, trouxe uma das minhas obras que mostra que a educa&ccedil;&atilde;o &eacute; um instrumento para o progresso humano.&nbsp;</p>\r\n</body>\r\n</html>', 1, 'Frase Motivacional Instagram Feed Twitter.png', 'condorcet-2', 'Condorcet - 2', NULL, '967', '2023-05-16 15:16:10', '2023-05-16 15:44:40', NULL),
(28, 6, 'Condorcet - 3', '32131', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Mais um pouco sobre meu pensamento em rela&ccedil;&atilde;o a educa&ccedil;&atilde;o.</p>\r\n</body>\r\n</html>', 1, 'Citação Frase Papel Kraft Instagram Post (1).png', 'condorcet-3', 'Condorcet - 3', NULL, '671', '2023-05-16 15:19:14', '2023-05-16 15:19:14', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts_post_categories`
--

CREATE TABLE `posts_post_categories` (
  `post_categories_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED DEFAULT NULL,
  `stories_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts_post_categories`
--

INSERT INTO `posts_post_categories` (`post_categories_id`, `id`, `stories_id`) VALUES
(3, NULL, 7),
(3, NULL, 8),
(3, NULL, 9),
(3, NULL, 10),
(3, NULL, 11),
(3, 9, NULL),
(3, 8, NULL),
(3, 7, NULL),
(3, 6, NULL),
(3, 5, NULL),
(3, 4, NULL),
(4, 11, NULL),
(4, 12, NULL),
(4, 14, NULL),
(4, 13, NULL),
(4, 16, NULL),
(4, 17, NULL),
(4, 18, NULL),
(4, 19, NULL),
(5, 22, NULL),
(5, 23, NULL),
(5, 24, NULL),
(6, 25, NULL),
(7, 26, NULL),
(7, 27, NULL),
(7, 28, NULL),
(4, 20, NULL),
(3, 10, NULL),
(4, 15, NULL),
(4, 21, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `user_id`, `title`, `description`, `content`, `main_image`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, NULL, 6, 'Johann Heinrich Pestalozzi', '40000', '🤝 Educador suíço |\r\n👊 Luto contra a exclusão social e a pobreza, pois a educação é um direito humano e um dever social', 'Johann_Heinrich_Pestalozzi_ capa.jpg', 'johann-heinrich-pestalozzi', 'Johann Heinrich Pestalozzi', NULL, '3200', '2023-05-04 13:51:50', '2023-05-05 14:53:54', NULL),
(4, NULL, 6, 'Jean-Jacques Rousseau', '52607', 'Filósofo, escritor e teórico político genebrino. Um dos principais pensadores da Modernidade e um crítico do Iluminismo. Modéstia à parte, sou considerado um importante teórico contratualista.', 'rosseau.jpg', 'jean-jacques-rousseau', 'Jean-Jacques Rousseau', NULL, '652', '2023-05-06 09:38:28', '2023-05-06 09:38:28', NULL),
(5, NULL, 6, 'Johann Bernhard Basedow', '25091', 'Educador e fundador da Instituição Philanthropinum', 'foto de perfil.jpg', 'johann-bernhard-basedow', 'Johann Bernhard Basedow', NULL, '692', '2023-05-15 09:34:36', '2023-05-16 14:49:29', NULL),
(6, NULL, 6, 'La Chalotais', '19978', 'Advogado e filósofo defensor das ideias progressistas e liberais', 'foto de capa.jpg', 'la-chalotais', 'La Chalotais', NULL, '899', '2023-05-15 13:40:33', '2023-05-15 13:40:33', NULL),
(7, NULL, 6, 'Marquês de Condorcet', '17020', 'Matemático, filósofo e político que participou ativamente na Revolução Francesa.', 'foto de capa.webp', 'marques-de-condorcet', 'Marquês de Condorcet', NULL, '1007', '2023-05-15 14:17:20', '2023-05-15 14:17:20', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `stories`
--

CREATE TABLE `stories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `main_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `stories`
--

INSERT INTO `stories` (`id`, `title`, `main_image`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 'Story Teste', 'JOJO.jpg', '2023-04-05 20:00:09', '2023-05-04 14:22:27', '2023-05-04 14:22:27', 6),
(2, 'Teste', 'istockphoto-1145618475-612x612.jpg', '2023-04-21 22:40:57', '2023-05-04 14:22:28', '2023-05-04 14:22:28', 6),
(3, '😋', 'transferir (1).jpg', '2023-04-21 22:41:12', '2023-05-04 14:22:30', '2023-05-04 14:22:30', 6),
(4, 'Teste 2', 'transferir.jpg', '2023-04-21 22:41:54', '2023-05-04 14:22:31', '2023-05-04 14:22:31', 6),
(5, 'Story 3', 'istockphoto-1248448159-612x612.jpg', '2023-04-21 22:42:14', '2023-05-04 14:22:33', '2023-05-04 14:22:33', 6),
(6, 'Story fim', 'transferir.jpg', '2023-04-21 22:42:30', '2023-05-04 14:22:25', '2023-05-04 14:22:25', 6),
(7, 'Pedagogia', 'images (11).jpeg', '2023-05-04 14:23:10', '2023-05-04 14:23:10', NULL, 6),
(8, 'Stanz', 'images (11).jpeg', '2023-05-04 14:23:35', '2023-05-04 14:23:35', NULL, 6),
(9, 'Burgordf', 'images (11).jpeg', '2023-05-04 14:24:08', '2023-05-04 14:24:08', NULL, 6),
(10, 'Yverdon', 'images (11).jpeg', '2023-05-04 14:24:54', '2023-05-04 14:24:54', NULL, 6),
(11, 'Inspirações', 'images (11).jpeg', '2023-05-04 14:25:20', '2023-05-04 14:25:20', NULL, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `numero_cadastro` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `rg_expedicao` date DEFAULT NULL,
  `rg_orgaoexpedidor` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `local_nascimento` varchar(255) DEFAULT NULL,
  `filiacao_pai` varchar(255) DEFAULT NULL,
  `filiacao_pai_nascimento` date DEFAULT NULL,
  `filiacao_mae` varchar(255) DEFAULT NULL,
  `filiacao_mae_nascimento` date DEFAULT NULL,
  `nome_conjuge` varchar(255) DEFAULT NULL,
  `data_nascimento_conjuge` date DEFAULT NULL,
  `estado_civil` tinyint(4) DEFAULT NULL,
  `endereco_residencial` varchar(255) DEFAULT NULL,
  `endereco_cep` varchar(255) DEFAULT NULL,
  `endereco_bairro` varchar(255) DEFAULT NULL,
  `endereco_cidade` varchar(255) DEFAULT NULL,
  `telefone_residencial` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `telefone_comercial` varchar(255) DEFAULT NULL,
  `telefone_outro` varchar(255) DEFAULT NULL,
  `email_outro` varchar(255) DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `apelido` varchar(255) DEFAULT NULL,
  `biography` varchar(255) DEFAULT NULL,
  `userable_type` varchar(255) NOT NULL,
  `userable_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `numero_cadastro`, `rg`, `rg_expedicao`, `rg_orgaoexpedidor`, `cpf`, `data_nascimento`, `local_nascimento`, `filiacao_pai`, `filiacao_pai_nascimento`, `filiacao_mae`, `filiacao_mae_nascimento`, `nome_conjuge`, `data_nascimento_conjuge`, `estado_civil`, `endereco_residencial`, `endereco_cep`, `endereco_bairro`, `endereco_cidade`, `telefone_residencial`, `celular`, `telefone_comercial`, `telefone_outro`, `email_outro`, `profissao`, `apelido`, `biography`, `userable_type`, `userable_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Admin', 1, NULL, '2023-04-04 18:06:22', '2023-04-04 03:00:00', NULL),
(6, 'Instagram', 'adm@instagrammaker.com.br', '$2y$10$hcvAmIjNCzr9OGOQSAcvq.Etb1nFApxsaQ05fSomnDYwJ.setBkja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'App\\Models\\Admin', 2, 'LWfDoglt4idynR0UTqRtF2lxAl5omlBaSLhdTX0beYDz6DwigNt9WgY2qPSG', '2023-04-21 18:12:01', '2023-04-21 18:12:01', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Índices para tabela `posts_post_categories`
--
ALTER TABLE `posts_post_categories`
  ADD KEY `posts_post_categories_post_categories_id_foreign` (`post_categories_id`),
  ADD KEY `posts_post_categories_id_foreign` (`id`),
  ADD KEY `stories_id` (`stories_id`);

--
-- Índices para tabela `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_categories_user_id_foreign` (`user_id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Índices para tabela `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_userable_type_userable_id_index` (`userable_type`,`userable_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `posts_post_categories`
--
ALTER TABLE `posts_post_categories`
  ADD CONSTRAINT `posts_post_categories_ibfk_1` FOREIGN KEY (`stories_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_post_categories_id_foreign` FOREIGN KEY (`id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_post_categories_post_categories_id_foreign` FOREIGN KEY (`post_categories_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `post_categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
