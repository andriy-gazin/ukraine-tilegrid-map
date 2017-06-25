library(ggplot2)


ukraine <- data.frame(
  
  row = c(1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5),
  
  col = c(2, 5, 6, 7, 1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 4, 5, 6, 7, 8, 2, 5, 6, 7, 4, 6, 5),
  
  code = c(1:27),
  
  name = as.character(c("Волинська", "м. Київ", "Чернігівська", "Сумська", "Львівська", "Тернопільська", "Рівненська", "Житомирська", "Київська", "Полтавська", "Харківська", "Луганська", "Закарпатська", "Івано-Франківська", "Хмельницька", "Вінницька", "Черкаська", "Кіровоградська", "Дніпропетровська", "Донецька", "Чернівецька", "Миколаївська", "Херсонська", "Запорізька", "Одеська", "АР Крим", "м. Севастополь")),
  
  stringsAsFactors = F
  
)

png(filename = 'tilegrid.png', width = 1200, height = 1000)

ggplot(ukraine)+
  geom_tile(aes(x = col, y = row), fill = 'white', color = 'black')+
  geom_text(aes(x = col, y = row, label = name, family = 'Ubuntu Condensed'), color = 'black')+
  scale_y_reverse()+
  theme_void()

dev.off()