//<continuation number="0">
//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0384.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#�C�x���g�t�@�C����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm0390.nss";

}


scene dm0384.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	WaitKey(2000);

	CreateTextureSP("�G�w�i100", 100, 0, -536, "cg/bg/l/bg104031_5_���t�������_l.jpg");

	Move("�G�w�i100", 1000, 0, -576, Dxl1, false);
	DrawDelete("��w�i", 1000, 100, Dxl1, "slide_02_00_0", true);

	SetVolumeEX("SE*", 3000, 0, null);

//�����o�F�ȉ��u�I�����F�������牽�����������i�N���A�|�C���g�{�P�j�v�̏ꍇ�������݁[�[�[�[

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.&.&.&.Hm?

When I felt a breeze and opened my eyes&, there was a 
gaping hole on the door to the veranda&.

&.&.&.&.&.&.That gas mask guy&.&.&.&.&.&.

&.&.&.&.&.&.But I kinda don't care anymore&.
I don't wanna get up&.

In the end&, I fell asleep as it was&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ClearFadeAll(2000, true);
	Wait(3000);

//�����t�@�C��["dm0390.nss"]

}
