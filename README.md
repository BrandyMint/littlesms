littlesms
=========

Модуль для отправки сообщения через сервис littlesms.ru

## Установка

Добавьте в Gemfile
`gem 'littlesms', github: 'BrandyMint/littlesms'`
затем
`bundle install`

создайте `littlesms_initializer.rb` в `config/initializers` следующего содержания

```ruby
LittleSms.configure do |config|
  config.email = 'your_littlesms_email'
  config.api_key = 'your_littlesms_api_key'
  config.sender = 'sms_sender (will be displayed on users phone)'
end
```
перезапустите приложение

## Использование

Проще простого!
отправка смс
```ruby
LittleSms.send_sms(phone, message, options)
```
options - необязатльный параметр, например
```ruby
 LittleSms.send_sms('9051234567', 'Wazzuuup')
```

В `options` можно передавать любые параметры, которые предполагает метод send в апи littlesms. Например чтобы протестировать отправку передайте параметр test=1
```ruby
 LittleSms.send_sms('9051234567', 'Wazzuuup', {test: 1})
```
