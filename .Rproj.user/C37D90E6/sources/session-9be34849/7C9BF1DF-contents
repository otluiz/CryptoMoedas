library(cryptoQuotes)
library(dplyr)
library(ggplot2)
library(gridExtra)
library(shiny)
library(plotly)


?cryptoQuotes
browseVignettes("cryptoQuotes")


# 1) getting hourly BTC
# from the last 3 days
BTC <- cryptoQuotes::getQuote(
  ticker   = "BTCUSDT",
  source   = "binance",
  futures  = FALSE,
  interval = "1h",
  from     = as.character(Sys.Date() - 3)
)
# Veririque se BTC é um data frame
if(!is.data.frame(BTC)){
  BTC <- as.data.frame(BTC)
}
# Adicione uma coluna data
BTC$Date <- as.POSIXct(rownames(BTC))
# Remove os nomes das linhas, já que agora temos uma coluna de data
rownames(BTC) <- NULL


# 2) getting hourly ATOM
# from the last 3 days
# Obter os dados da ATOMUSDT
ATOMUSDT <- cryptoQuotes::getQuote(
  ticker   = "ATOMUSDT",
  source   = "binance",
  futures  = FALSE,
  interval = "1h",
  from     = as.character(Sys.Date() - 3)
)
# Veririque se BTC é um data frame
if(!is.data.frame(ATOMUSDT)){
  ATOMUSDT <- as.data.frame(ATOMUSDT)
}
# Adicione uma coluna data
ATOMUSDT$Date <- as.POSIXct(rownames(ATOMUSDT))
# Remove os nomes das linhas, já que agora temos uma coluna de data
rownames(ATOMUSDT) <- NULL

# 3) getting hourly Ethereum
# from the last 3 days
# Obter dados para Ethereum
ETHUSDT <- cryptoQuotes::getQuote(
  ticker   = "ETHUSDT",
  source   = "binance",
  futures  = FALSE,
  interval = "1h",
  from     = as.character(Sys.Date() - 3)
)
if(!is.data.frame(ETHUSDT)){
  ETHUSDT <- as.data.frame(ETHUSDT)
}
# Adicione uma coluna data
ETHUSDT$Date <- as.POSIXct(rownames(ETHUSDT))
# Remove os nomes das linhas, já que agora temos uma coluna de data
rownames(ETHUSDT) <- NULL


# 4) getting hourly Ethereum
# from the last 3 days
# Obter dados para Ripple
XRPUSDT <- cryptoQuotes::getQuote(
  ticker   = "XRPUSDT",
  source   = "binance",
  futures  = FALSE,
  interval = "1h",
  from     = as.character(Sys.Date() - 3)
)
if(!is.data.frame(XRPUSDT)){
  XRPUSDT <- as.data.frame(XRPUSDT)
}
# Adicione uma coluna data
XRPUSDT$Date <- as.POSIXct(rownames(XRPUSDT))
# Remove os nomes das linhas, já que agora temos uma coluna de data
rownames(XRPUSDT) <- NULL

# ## Create a chart
# 2) Primeiro gráfico com dados da ATOM
# cryptoQuotes::chart(
#   cryptoQuotes::kline(ATOMUSDT, deficiency = FALSE) %>%
#     cryptoQuotes::addVolume() %>%
#     cryptoQuotes::addBBands(cols = c('close'))
# )



# 4) Criando um gráfico com os dados do BTC
# cryptoQuotes::chart(
#   cryptoQuotes::kline(BTC, deficiency = FALSE) %>%
#     cryptoQuotes::addVolume() %>%
#     cryptoQuotes::addBBands(cols = c('close'))
# )


# UI do Shiny
ui <- fluidPage(
  # Crie um layout com quatro espaços para os gráficos
  splitLayout(
    plotlyOutput("btcChart"),
    plotlyOutput("atomChart"),
    plotlyOutput("ethChart"),
    plotlyOutput("xrpChart")
  )
)



# Server do Shiny
server <- function(input, output) {
  # Gere o gráfico do BTC
  output$btcChart <- renderPlotly({
    if("Date" %in% names(BTC)) {
      fig <- plot_ly(data = BTC, x = ~Date, type = "candlestick",
                     open = ~Open, close = ~Close,
                     high = ~High, low = ~Low) %>%
        layout(title = "Gráfico Bitcoin (BTC)")

      return(fig)
    } else {
      plot_ly() %>%
        layout(title = "Dados não disponíveis")
    }
  })
  # Gere o gráfico do ATOM
  output$atomChart <- renderPlotly({
    if("Date" %in% names(ATOMUSDT)) {
      fig <- plot_ly(data = ATOMUSDT, x = ~Date, type = "candlestick",
                     open = ~Open, close = ~Close,
                     high = ~High, low = ~Low) %>%
        layout(title = "Gráfico Atom (ATOM)")

      return(fig)
    } else {
      plot_ly() %>%
        layout(title = "Dados não disponíveis")
    }
  })
  # Gere o gráfico do ETH
  output$ethChart <- renderPlotly({
    if("Date" %in% names(ETHUSDT)) {
      fig <- plot_ly(data = ETHUSDT, x = ~Date, type = "candlestick",
                     open = ~Open, close = ~Close,
                     high = ~High, low = ~Low) %>%
        layout(title = "Gráfico Etherium (ETH)")

      return(fig)
    } else {
      plot_ly() %>%
        layout(title = "Dados não disponíveis")
    }
  })
  # Gere o gráfico do XRP
  output$xrpChart <- renderPlotly({
    if("Date" %in% names(XRPUSDT)) {
      fig <- plot_ly(data = XRPUSDT, x = ~Date, type = "candlestick",
                     open = ~Open, close = ~Close,
                     high = ~High, low = ~Low) %>%
        layout(title = "Gráfico Ripple (XRP)")

      return(fig)
    } else {
      plot_ly() %>%
        layout(title = "Dados não disponíveis")
    }
  })
}




# Execute o aplicativo
shinyApp(ui, server)

