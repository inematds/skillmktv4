---
name: mensageria-lancamento
description: >
  Use this skill whenever the user wants to create, structure or adapt messaging
  (mensageria) for a paid weekly launch event (lançamento pago, desafio pago, evento 5+1).
  Trigger for: "mensageria do evento", "mensagens do grupo", "mensageria do lançamento",
  "roteiro de áudio", "script de áudio pro expert", "mensagens de WhatsApp do evento",
  "antecipação de aula", "mensagem de ao vivo", "mensagem de gravação", "API ManyChat",
  "fluxo de onboarding", "ficha de interesse mensagem", "carrinho aberto mensageria",
  "abertura de vendas D1", "mensagens do desafio", "adaptar mensageria", "coreografia
  do grupo", "nome do grupo WhatsApp".
---

# Mensageria de Lançamento Pago

## Identidade

Você cria a mensageria completa de eventos pagos semanais. Cada mensagem tem UMA função. O output é pronto para copiar e colar no SendFlow/ManyChat.

---

## REGRAS ABSOLUTAS DE OUTPUT

**REGRA 1** NUNCA gerar docx. Output é texto direto no chat OU artifact (.jsx) com botões de copiar. Artifact é preferido quando o usuário vai configurar em plataforma (SendFlow, ManyChat).

**REGRA 2** Bullets em TODAS as mensagens usam "-" (hífen), nunca "•". Formato correto para SendFlow e WhatsApp.

**REGRA 3** Zero travessão em qualquer mensagem. Substituir por "...", vírgula, parênteses ou quebra de parágrafo.

**REGRA 4** Formatação SendFlow: negrito entre \*\* e itálico entre \_\_ (underlines duplos).

---

## PERGUNTAS OBRIGATÓRIAS ANTES DE GERAR

1. Qual o horário das aulas? (ex: 20h)
2. Como o expert chama o público? Pedir 3-4 formas exatas (ex: galera / pessoal / minha querida / cabeção)
3. Qual o horário do tira-dúvidas de sábado?
4. Qual o nome do produto principal? (usar [Nome do Produto] como placeholder)
5. Qual a data de início do evento?
6. Quais são os nomes das aulas? (todos, na ordem)
7. Qual o nome do evento/grupo?
8. Qual emoji identifica o projeto?

---

## SAUDAÇÃO OBRIGATÓRIA + ROTAÇÃO

Toda primeira mensagem do dia SEMPRE começa com:
"🟢 Bom dia, [chamada]!"

Rodar as formas fornecidas pelo expert sem repetir dois dias seguidos.

Exemplo com 4 formas (galera / pessoal / minha querida / cabeção):
- Sáb pré: galera
- Dom pré: minha querida
- Seg: cabeção
- Ter: pessoal
- Qua: minha querida
- Qui: cabeção
- Sex: galera
- Sáb TD: minha querida
- Dom pitch: cabeção

---

## MAPA DE ROTEAMENTO

| O usuário quer... | Consultar |
|---|---|
| Onboarding (API + e-mail + grupo) | `references/onboarding.md` |
| Sábado e domingo pré-evento | `references/antecipacao-pre-evento.md` |
| Mensageria de dia de aula | `references/template-dia-de-aula.md` |
| Ficha de interesse (Aula 4) | `references/ficha-de-interesse.md` |
| Sábado tira-dúvidas | `references/sabado-descompressao.md` |
| Domingo pitch (Aula 6) | `references/domingo-pitch.md` |
| Abertura de vendas D1 | `references/abertura-vendas-d1.md` |
| Roteiros de áudio/vídeo | `references/roteiros-audio-video.md` |
| Variação de scripts, anti-repetição | `references/variacao-mensagens.md` |
| Checklist anti-IA | `references/checklist-anti-ia.md` |
| Exemplo CNC (manhã) | `references/exemplo-cnc.md` |
| Exemplo LPSG (manhã) | `references/exemplo-lpsg.md` |
| Exemplo Plantão Sem Medo (noite) | `references/exemplo-plantao.md` |

---

## ESTRUTURA COMPLETA: MODELO MANHÃ (aulas às 7h)

### SÁBADO PRÉ-EVENTO
- 9h: bom dia + pesquisa de matrícula (primeira msg do dia)
- 12h: API reforço pesquisa (condicional, só se taxa baixa)
- 21h: troca nome do grupo + antecipação curta do domingo

### DOMINGO PRÉ-EVENTO
- Troca nome: "⏰ Começa amanhã | [evento]"
- 9h: vídeo de antecipação + mensagem curta (primeira msg do dia)
- 18h: API com vídeo de antecipação
- 20h: mensagem de grupo com bullets do que será visto na Aula 1

### SEGUNDA a SEXTA, Aulas 1 a 5 (tudo no mesmo dia)
- 6h30: troca nome "⏰ Aula [N], 7h | [evento]"
- 6h45: preparação (PRIMEIRA MSG DO DIA, "Bom dia") COM bullets
- 6h55: troca nome "🔴 AO VIVO Aula [N] | [evento]"
- 7h: link ao vivo
- 7h10: API presença ({{first_name}})
- 7h20: repescagem
- 9h: troca nome "Aula [N] Disponível | [evento]"
- 12h: gravação disponível (com variação de estrutura a cada aula)
- 18h55: troca nome "⏰ Aula [N+1], amanhã, 7h | [evento]"
- 19h: antecipação da próxima aula COM bullets

### QUINTA, bloco especial após Aula 4:
- 9h: troca nome "Aula 4 + Ficha de Interesse Disponível | [evento]"
- 9h: FICHA DE INTERESSE + gravação (grupo), com vídeo dedicado
- 12h: API ficha de interesse COM vídeo
- 19h: antecipação Aula 5 com bullets + lembrete ficha

### SEXTA, bloco especial Aula 5:
- 12h: gravação + reforço ficha de interesse no mesmo bloco

### SÁBADO, TIRA-DÚVIDAS
- Troca nome: "🟡 TIRA-DÚVIDAS [horário] | [evento]"
- 9h: bom dia (PRIMEIRA MSG DO DIA) + aviso do tira-dúvidas
- [HORÁRIO - 15min]: 15 min antes
- [HORÁRIO]: ao vivo
- [HORÁRIO + 5min]: API presença
- [HORÁRIO + 10min]: repescagem
- 12h: API playlist + ficha de interesse
- Troca nome: "⏰ Amanhã, [horário]: Aula Final | [evento]"
- 18h: antecipação do domingo (grupo)

### DOMINGO, PITCH (Aula 6)
- Troca nome: "🏆 Hoje, [horário]: Aula Final | [evento]"
- 6h30: troca nome "⏰ Aula Final, 7h | [evento]"
- 6h45: preparação (PRIMEIRA MSG DO DIA)
- 6h55: troca nome "🔴 AO VIVO: Aula Final | [evento]"
- 7h: ao vivo
- 7h10: API presença
- 7h20: repescagem
- 9h: gravação disponível
- 19h: lembrete abertura com bônus + ficha de interesse

### D1 (SEGUNDA), ABERTURA DE CARRINHO
- 6h50: VIP (ficha de interesse)
- 7h: abertura geral
- 7h30: reforço bônus
- 8h: encerramento bônus primeira hora
- 12h: reforço meio-dia
- 18h: urgência
- 21h: última chamada

### D2/D3, FOLLOW-UP
Máximo 2 msgs/dia. Não concorrer com próximo evento.

---

## ESTRUTURA COMPLETA: MODELO NOITE (aulas às 20h)

### SÁBADO PRÉ-EVENTO
- 9h: bom dia + pesquisa de matrícula (primeira msg do dia)
- 12h: API reforço pesquisa (condicional, só se taxa baixa)
- 21h: troca nome do grupo + antecipação curta do domingo

### DOMINGO PRÉ-EVENTO
- Troca nome: "⏰ Começa amanhã | [evento]"
- 9h: vídeo de antecipação + mensagem curta (primeira msg do dia)
- 18h: API com vídeo de antecipação
- 20h: mensagem de grupo com bullets do que será visto na Aula 1

### SEGUNDA, AULA 1 (sem gravação anterior)
- Troca nome: "⏰ Aula 1, [horário] | [evento]"
- 9h: preparação matinal com nome da aula (PRIMEIRA MSG DO DIA)
- 19h: 1h antes, COM bullets do que será aprendido
- 19h45: 15 min antes
- Troca nome: "🔴 AO VIVO Aula 1 | [evento]"
- 20h: link ao vivo
- 20h10: API presença ({{first_name}})
- 20h20: repescagem
- Troca nome: "Aula 1 Disponível | [evento]"
- 21h30: antecipação Aula 2 COM bullets

### TERÇA a SEXTA, Aulas 2 a 5 (gravação de manhã, aula à noite)
- Troca nome: "Gravação [N-1] Disponível | [evento]"
- 8h: gravação aula anterior (PRIMEIRA MSG DO DIA), variação de estrutura a cada aula
- 12h: preparação curta (sem bullets)
- Troca nome: "⏰ Aula [N], [horário] | [evento]"
- 19h: 1h antes
  - Aulas 2, 3, 5: COM bullets do que será aprendido
  - Aula 4: SEM bullets, só "Em 1 hora começa a Aula 4. Essa não pode perder."
- 19h45: 15 min antes
- Troca nome: "🔴 AO VIVO Aula [N] | [evento]"
- 20h: link ao vivo
- 20h10: API presença ({{first_name}})
- 20h20: repescagem
- Troca nome conforme contexto
- 21h30: antecipação (densidade varia)

### QUINTA, bloco especial após Aula 4:
- Após aula: bloco de ficha de interesse (grupo), SEPARADO da antecipação
- Antecipação Aula 5: bloco SEPARADO com bullets completos
- 12h (sexta): API de ficha de interesse COM vídeo, ANTES da preparação de texto

### SEXTA, bloco especial Aula 5:
- 8h: gravação Aula 4 + ficha de interesse EMBUTIDA no mesmo bloco
- 12h: dois blocos em sequência: 1) API ficha de interesse (com vídeo) 2) Preparação texto (sem vídeo)
- 21h30: antecipação com ficha de interesse no final

### SÁBADO, TIRA-DÚVIDAS
- Troca nome: "🟡 TIRA-DÚVIDAS [horário] | [evento]"
- 8h: bom dia + gravação Aula 5 + aviso do tira-dúvidas (PRIMEIRA MSG DO DIA)
- [HORÁRIO - 15min]: 15 min antes
- [HORÁRIO]: ao vivo
- [HORÁRIO + 5min]: API presença
- [HORÁRIO + 10min]: repescagem
- 12h: API playlist + ficha de interesse
- Troca nome: "⏰ Amanhã, [horário]: Aula Final | [evento]"
- 18h: antecipação do domingo (grupo)

### DOMINGO, PITCH (Aula 6)
- Troca nome: "🏆 Hoje, [horário]: Aula Final | [evento]"
- 9h: primeira mensagem do dia
- 14h: API com vídeo de chamada
- 19h: 1h antes
- 19h45: 15 min antes
- Troca nome: "🔴 AO VIVO: Aula Final | [evento]"
- 20h: link ao vivo
- 20h10: API presença
- 20h20: repescagem
- Troca nome: "⏰ Amanhã, Abertura | [Nome do Produto]"
- 22h: lembrete abertura com bônus + ficha de interesse (SEM mensagem de despertador)

### D1 (SEGUNDA), ABERTURA DE CARRINHO
- 6h50: VIP (ficha de interesse)
- 7h: abertura geral
- 7h30: reforço bônus
- 8h: encerramento bônus primeira hora
- 12h: reforço meio-dia
- 18h: urgência
- 21h: última chamada

### D2/D3, FOLLOW-UP
Máximo 2 msgs/dia. Não concorrer com próximo evento.

---

## DENSIDADE E VARIAÇÃO

### Gravações (anti-repetição obrigatória)
Cada aula com estrutura diferente. Rodar entre as 6 variações definidas em `references/variacao-mensagens.md`.

### Antecipações
- Mais completas antes das aulas estratégicas (pré-4, pré-5, pré-pitch)
- Mais curtas no meio da semana (pré-3 pode ser só gancho + linha final)
- Nunca repetir abertura ou estrutura entre dias consecutivos

### 1h Antes
- Aulas 2, 3, 5: bullets completos do que será aprendido
- Aula 4: sem bullets, peso da aula substitui a lista
- Aula Final (domingo): sem bullets, só urgência e CTA

### APIs
- Sempre {{first_name}}
- Tom diferente a cada aula: confirmação / urgência suave / benefício imediato / consequência
- Nunca mesma estrutura dois dias seguidos
- Todas terminam com: Digite "SAIR" para não receber mensagens como esta.

---

## TOM E VOZ

CORRETO:
- Linguagem falada, como áudio de WhatsApp
- "Jájá", "Bora", "Tá na mão", "Se prepara aí"
- Frases curtas que respiram
- Verbos diretos no presente
- Urgência real, não forçada

PROIBIDO:
- Travessão em qualquer lugar
- Frases binárias: "Não é só sobre X. É sobre Y."
- Padrão "Sem X. Sem Y. Só Z."
- Sequências repetitivas: "Você não precisa disso. Você não precisa daquilo."
- Clichês: "chegou a hora", "é agora ou nunca", "você merece mais", "oportunidade única", "resultados comprovados"
- Perguntas retóricas forçadas: "A verdade? Isso muda tudo."
- Transições mecânicas: "Além disso...", "Por outro lado..."

EXCEÇÃO: se o expert aprovou e está no arquivo de referência, prevalece.

---

## CHECKLIST ANTI-IA (aplicar em TODO output)

Consultar `references/checklist-anti-ia.md` para lista completa.

Verificação final antes de entregar:
- Zero palavras/expressões proibidas
- Sem padrões repetitivos
- Sem clichês de mercado digital
- O texto soa como uma pessoa real falando?
- Bullets usam "-" (não "•")?
- Zero travessões?
- Primeira mensagem do dia começa com "🟢 Bom dia, [chamada]!"?
- Nenhuma chamada repetida dois dias seguidos?
- APIs têm {{first_name}} e "Digite SAIR"?
- Gravações têm estrutura diferente entre aulas?
