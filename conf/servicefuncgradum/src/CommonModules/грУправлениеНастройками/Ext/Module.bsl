﻿#Область ПрограммныйИнтерфейс

// Возвращает значение настройки по имени.
//	
//	Параметры: 
//		ИмяНастройки - Строка. 
//		
//	Возвращаемое значение:
//		ЗначениеНастройки - произвольный тип
Функция ПолучитьЗначениеНастройки( ИмяНастройки )  Экспорт
	
	УстановитьПривилегированныйРежим( Истина );
	
	Возврат Справочники.грНастройки.ПолучитьЗначениеНастройки( ИмяНастройки );
		
КонецФункции //ПолучитьЗначение()

// Проверяет, что переданное значение равно значению настройки, с учетом, что настройка может быть списком
//	
//	Параметры: 
//		Значение - Произвольный тип. Значение, которое сравнивается со значением настройки.
//		ИмяНастройки - Строка. 
//		
//	Возвращаемое значение:
//		Булево - Истина, если значение равно значению настройки
Функция ЗначениеРавноЗначениюНастройки( Значение, ИмяНастройки ) Экспорт
	
	Результат         = Ложь;
	ЗначениеНастройки = ПолучитьЗначениеНастройки( ИмяНастройки );
	
	Если ТипЗнч( ЗначениеНастройки ) = Тип( "Массив" ) Тогда
		Результат = ( ЗначениеНастройки.Найти( Значение ) <> Неопределено )
	Иначе
		Результат = ( ЗначениеНастройки = Значение );
	КонецЕсли;
	
	Возврат Результат;
	
КонецФункции

// Выполняет замену шаблонов текста запроса по настройкам на текст запрос получения данных.
//	
//	Параметры: 
//		ТекстЗапроса - Строка. Текст запроса, в котором выполняется замена шаблона.
//		
//	Возвращаемое значение:
//		Строка - Тест запроса для исполнения.
Функция ШаблонТекстаЗапросаНастройкиВТекстЗапроса( ТекстЗапроса )  Экспорт
	
	Возврат Справочники.грНастройки.ШаблонТекстаЗапросаНастройкиВТекстЗапроса( ТекстЗапроса );
	
КонецФункции
	

#КонецОбласти  //ПрограммныйИнтерфейс

