@echo �뽫�ֻ��������USB�����ӣ������ֻ��ϴ򿪵���ģʽ��
@pause
@..\android\adb push *.lua /sdcard/MobileAnjian/plugin/
@IF ERRORLEVEL 1 goto fail
@IF ERRORLEVEL 0 goto success
:fail
@echo ����ʧ�ܣ���ȷ���ֻ��������ȷ���ӣ��������ֻ��ϴ򿪵���ģʽ��
@goto end
:success
@echo ����ɹ���
@goto end
:end
@pause
