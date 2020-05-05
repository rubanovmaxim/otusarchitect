Добавил файлы-мфнифесты для запуска приложения в minikube

Для запуска нажно склонировать c ветки homework_2 командой:
1. <b>git clone https://github.com/rubanovmaxim/otusarchitect.git -b homework_2</b>
2. перейти в папку <b>otusarchitect</b>
3. запустить <b>kubectl apply -f .</b>
4. проверить через 10 секунд <b> curl -H 'Host: arch.homework' http://$(minikube ip)/otusapp/health </b>

