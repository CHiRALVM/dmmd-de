//<continuation number="470">
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


scene dm5470_vs.nss_MAIN
{

$TEXTBOX_TYPE="���C��";


	if($dm5450_vs_�o�g���Ȃ�==true){
	}else{
	RMAlarmSet(3000);
	}


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

	//�����o�Ŏg�p�����f�ނ��폜
	RMAlarmDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5480_vs.nss";

}


scene dm5470_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg201011_0_���C���p�u���b�N�t�B�[���h");
	FadeBG(0,true);

	FadeDelete("��w�i", 0, null, true);

//�������u���o�F���C���̃A���[�g�v
//���N���җ�����[�Ƃ����A���[���i�G���[�A���[���ł������j
	CreateSE("SE01","se�[��_���C��_�A���[�g01");
	MusicStart("SE01",0,700,0,1000,null,true);
	//RMAlarmSet(3000);

//���������Đ���-1
	RhymeDrawSet("bug02_back00", 800, -13, 332, "cg/ev/x/ev550�o�O��Ԃ̘@_x04.png");
	RhymeDrawSet("bug02_back01", 700, -13, -220, "cg/ev/x/ev550�o�O��Ԃ̘@_x01.png");

	Wait(20);
//���������Đ���-1-2
	RhymeDrawSet("bug02_back02", 600, 281, -268, "cg/ev/x/ev550�o�O��Ԃ̘@_x03.png");
	RhymeDrawSet("bug02_back03", 500, 105, -60, "cg/ev/x/ev550�o�O��Ԃ̘@_x02.png");

	RMAlarm();

//���m�C�Y����Ԃ��猻���

{	Fw("fw���t_�ʏ�_rage");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000010a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
When an alarm sounds&, the space starts to warp&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	RMAlarmClose();
	SetVolumeEX("SE*", 3000, 0, null);

	Wait(50);

//���������Đ���-2
	RhymeDrawSet("bug03_back00", 800, 714, 448, "cg/ev/x/ev550�o�O��Ԃ̘@_x16.png");


	CoilStartSet();
	RhymeDrawSet("�m�C�Y",1000,345,21,"cg/st/st�m�C�Y_�ʏ�_normal.png");
	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	CreateSE("SE01","se�[��_���C��_����01");

	MusicStart("SE01",0,700,0,1000,null,false);
	CoilStartFade2();
	RhymeDrawFade("�m�C�Y");
	FadeSt("C",200,true);

	Wait(600);

//���������Đ���-2-2
	RhymeDrawSet("bug03_back01", 700, 511, 19, "cg/ev/x/ev550�o�O��Ԃ̘@_x05.png");
	RhymeDrawSet("bug03_back02", 600, 733, -178, "cg/ev/x/ev550�o�O��Ԃ̘@_x06.png");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
While I tensed and readied myself for a blow&, Noiz 
appeared&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm010",0,450,true);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000020a01">
"Noiz!?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000030a03">
"Seriously&, none of this shit makes sense anymore&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000040a01">
"How did you get here!?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_pride");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000050a03">
"Who do you think you're talking to?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Noiz makes a small grin and walks up to me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"bu�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000060a03">
"Anyway&, I forcibly opened this field&. The others should be here soon&.&.&. and some others&, too&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000070a01">
"Others?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	DeleteAllSt(200,true);

//���N���җ�����[�Ƃ����A���[���i�G���[�A���[���ł������j
	CreateSE("SE01","se�[��_���C��_�A���[�g01");
	CreateSE("SE02","se�[��_���C��_����01");
	CreateSE("SE03","se�[��_���C��_����01");
	CreateSE("SE04","se�[��_���C��_����01");

	CoilStartSet();

	St("L",740, @0,@0,"st�~���N_�ʏ�_normal");
	St("C",1050, @0,@0,"st�g��_�ʏ�_normal2");
	St("R",740, @0,@0,"st�N���A_���ʃ}�X�N����_normal");

	MusicStart("SE01",0,700,0,1000,null,true);

	RhymeDrawSet("�~���N",1000,61,-14,"cg/st/st�~���N_�ʏ�_normal.png");
	RhymeDrawSet("�g��",1100,322,6,"cg/st/st�g��_�ʏ�_normal2.png");
	RhymeDrawSet("�N���A",1000,618,26,"cg/st/st�N���A_���ʃ}�X�N����_normal.png");


	RMAlarm();

	CoilStartFade2();
	MusicStart("SE04",0,700,0,1000,null,false);
	RhymeDrawFade("�g��");
	FadeSt("C",200,false);

	MusicStart("SE02",0,700,0,1000,null,false);
	RhymeDrawFade("�~���N");
	FadeSt("L",200,false);

	MusicStart("SE03",0,700,0,1000,null,false);
	RhymeDrawFade("�N���A");
	FadeSt("R",200,false);

	SetVolumeEX("SE*", 2000, 0, null);

	RMAlarmClose();

//	Wait(600);


//���������Đ���-3
	RhymeDrawSet("bug01_back00", 800, 125, 410, "cg/ev/x/ev550�o�O��Ԃ̘@_x08.png");
	RhymeDrawSet("bug01_back01", 700, 332, 34, "cg/ev/x/ev550�o�O��Ԃ̘@_x09.png");
	RhymeDrawSet("bug01_back02", 600, 416, -341, "cg/ev/x/ev550�o�O��Ԃ̘@_x10.png");
	RhymeDrawSet("bug01_back03", 500, 200, -273, "cg/ev/x/ev550�o�O��Ԃ̘@_x07.png");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/7000080a02">
"Aoba!"

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/7000090a04">
"Master!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
As the alarm sounded&, Koujaku&, Clear&, and Mink appeared 
one by one&.

The alarm still hasn't stopped&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(180,true);

	CreateTextureEXadd("���`EF01", 3000, center, middle, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	Zoom("���`EF01", 0, 2000, 2000, null, true);
	CreateTextureEXadd("���`EF01", 3000, center, middle, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	Zoom("���`EF01", 0, 2000, 2000, null, true);
	CreateTextureEXadd("���`EF01", 3000, center, middle, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	Zoom("���`EF01", 0, 2000, 2000, null, true);
	SetBlur("���`EF*", true, 1, 500, 200, false);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt("C",180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000100a03">
"They're coming&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Wait(50);

//���������Đ���-4
	RhymeDrawSet("bug04_back00", 800, 473, 148, "cg/ev/x/ev550�o�O��Ԃ̘@_x11.png");
	RhymeDrawSet("bug04_back01", 700, 873, -117, "cg/ev/x/ev550�o�O��Ԃ̘@_x14.png");

//�������u�f�ޗv�]�F���̈ꖇ�G�~�����ȁc�c�v
//�����݁F�f�ޗ��Ă��牉�o�@�����
	CreateTextureEX("�G�w�i", 2000, Center, Middle, "cg/ev/ev550�o�O��Ԃ̘@.jpg");
	SetBlur("�G�w�i", true, 2, 500, 100, false);
	Zoom("�G�w�i", 0, 1300, 1300, null, true);
//	RhymeDrawSet("�G�w�iEF", 2100, Center, Middle, "cg/ev/ev550�o�O��Ԃ̘@.jpg");

	CreateTextureEX("�w�i�ڂ���", 450, 400, middle, "cg/ev/x/ev550�o�O��Ԃ̘@_�w�i�̂�.jpg");
	SetShade("�w�i�ڂ���", SEMIHEAVY);
	Zoom("�w�i�ڂ���", 0, 2000, 2000, null, true);
	CreateTextureEX("�w�i�ڂ�����̂�", 950, -500, middle, "cg/ev/x/ev550�o�O��Ԃ̘@_�w�i�̂�.jpg");
	SetShade("�w�i�ڂ�����̂�", HEAVY);
	Zoom("�w�i�ڂ�����̂�", 0, 2000, 2000, null, true);

	CreateSE("SE99","se�[��_���C��_�A���[�g01");
	MusicStart("SE99",0,700,0,1000,null,true);

	CreateTextureEX("bug02cg_back00", 800, -13, 332, "cg/ev/x/ev550�o�O��Ԃ̘@_x04.png");
	CreateTextureEX("bug02cg_back01", 700, -13, -220, "cg/ev/x/ev550�o�O��Ԃ̘@_x01.png");
	CreateTextureEX("bug02cg_back02", 600, 281, -268, "cg/ev/x/ev550�o�O��Ԃ̘@_x03.png");
	CreateTextureEX("bug02cg_back03", 500, 105, -60, "cg/ev/x/ev550�o�O��Ԃ̘@_x02.png");

	CreateTextureEX("bug03cg_back00", 800, 714, 448, "cg/ev/x/ev550�o�O��Ԃ̘@_x16.png");
	CreateTextureEX("bug03cg_back01", 700, 511, 19, "cg/ev/x/ev550�o�O��Ԃ̘@_x05.png");
	CreateTextureEX("bug03cg_back02", 600, 733, -178, "cg/ev/x/ev550�o�O��Ԃ̘@_x06.png");

	CreateTextureEX("bug01cg_back00", 800, 125, 410, "cg/ev/x/ev550�o�O��Ԃ̘@_x08.png");
	CreateTextureEX("bug01cg_back01", 700, 332, 34, "cg/ev/x/ev550�o�O��Ԃ̘@_x09.png");
	CreateTextureEX("bug01cg_back02", 600, 416, -341, "cg/ev/x/ev550�o�O��Ԃ̘@_x10.png");
	CreateTextureEX("bug01cg_back03", 500, 200, -273, "cg/ev/x/ev550�o�O��Ԃ̘@_x07.png");

	CreateTextureEX("bug04cg_back00", 800, 473, 148, "cg/ev/x/ev550�o�O��Ԃ̘@_x11.png");
	CreateTextureEX("bug04cg_back01", 700, 873, -117, "cg/ev/x/ev550�o�O��Ԃ̘@_x14.png");
	CreateTextureEX("bug04cg_back02", 600, 649, -222, "cg/ev/x/ev550�o�O��Ԃ̘@_x12.png");
	CreateTextureEX("bug04cg_back03", 500, 855, -370, "cg/ev/x/ev550�o�O��Ԃ̘@_x13.png");

//	SetBlur("bug01cg_*", true, 1, 500, 200, false);
//	SetBlur("bug02cg_*", true, 1, 500, 200, false);
//	SetBlur("bug03cg_*", true, 1, 500, 200, false);
//	SetBlur("bug04cg_*", true, 1, 500, 200, false);

	CreateTextureEXadd("�@�o�O01", 1000, 167, 550, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	Zoom("�@�o�O01", 0, 2000, 2000, null, true);
	CreateTextureEXsub("�@�o�O02", 650, -167, 252, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	Zoom("�@�o�O02", 0, 2000, 1700, null, true);
	CreateTextureEXadd("�@�o�O03", 500, 167, -52, "cg/ev/x/ev550�o�O��Ԃ̘@_x15.png");
	Zoom("�@�o�O03", 0, 1500, 1500, null, true);
//	SetBlur("�@�o�O*", true, 2, 500, 200, false);
//	DrawEffect("�@�o�O01", 0, "HighWave", 10, 20, null);
//	DrawEffect("�@�o�O02", 0, "HighWave", 5, 10, null);

	$���C�g�i�b�g���P = @�@�o�O01;
	$���C�g�i�b�g���Q = @�@�o�O02;
	$���C�g�i�b�g���R = @�@�o�O03;
	$���C�g�^�C�� = 300;

	CreateProcess("�v���Z�X�\���P", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("�v���Z�X�\���P","�v���Z�X�\���P");

//	MoveFTP1("@�@�o�O*",5000,20,5);
//	MoveFTP2("@bug02*",3000,4,3);
//	MoveFTP3("@bug03*",3000,4,3);
//	MoveFTP4("@�w�i*",3000,2,3);


	CreateSE("SE01","se�[��_���C��_����01����");
	CreateSE("SE02","se�[��_���C��_����01����");
	CreateSE("SE03","se�[��_���__����01");

	CoilStartSet();

//���������Đ���-4-2
	RhymeDrawSet("bug04_back02", 600, 649, -222, "cg/ev/x/ev550�o�O��Ԃ̘@_x12.png");
	RhymeDrawSet("bug04_back03", 500, 855, -370, "cg/ev/x/ev550�o�O��Ԃ̘@_x13.png");

	RMAlarm();


	Fade("�w�i�ڂ���", 300, 1000, null, true);


	Request("�v���Z�X�\���P", Start);



	CoilStartFade2();
	MusicStart("SE99",3000,300,0,1000,null,true);

	MusicStart("SE01",0,500,0,400,null,false);

	RhymeDrawFadeMax("bug02_back00");
	Fade("bug02cg_back00", 100, 1000, null, false);
	RhymeDrawFadeMax("bug03_back00");
	Fade("bug03cg_back00", 100, 1000, null, false);
//	CoilStartFade2();
	RhymeDrawFadeMax("bug03_back01");
	Fade("bug03cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug03_back02");
	Fade("bug03cg_back02", 100, 1000, null, false);
	CoilStartFade2();
	RhymeDrawFadeMax("bug02_back01");
	Fade("bug02cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug02_back02");
	Fade("bug02cg_back02", 100, 1000, null, false);
//	CoilStartFade2();


	RhymeDrawFadeMax("bug02_back03");
	Fade("bug02cg_back03", 100, 1000, null, false);

	Fade("�w�i�ڂ�����̂�", 200, 1000, null, true);

//	RhymeDrawFadeMax("bug03_back03");
//	Fade("bug03cg_back03", 100, 1000, null, true);


	MusicStart("SE02",0,500,0,400,null,false);

	Move("�w�i�ڂ���", 0, -500, @0, null, true);

	Delete("bug03*");
	Delete("bug02*");
	Delete("�w�i�ڂ�����̂�");

//	MoveFTP2("@bug01*",3000,4,3);
//	MoveFTP3("@bug04*",3000,4,3);

	CoilStartFade2();
	RhymeDrawFadeMax("bug01_back00");
	Fade("bug01cg_back00", 100, 1000, null, false);
	RhymeDrawFadeMax("bug04_back00");
	Fade("bug04cg_back00", 100, 1000, null, false);
	CoilStartFade2();
	RhymeDrawFadeMax("bug04_back01");
	Fade("bug04cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug04_back02");
	Fade("bug04cg_back02", 100, 1000, null, false);
	CoilStartFade2();
	RhymeDrawFadeMax("bug01_back01");
	Fade("bug01cg_back01", 100, 1000, null, false);
	RhymeDrawFadeMax("bug01_back02");
	Fade("bug01cg_back02", 100, 1000, null, false);

//	CoilStartFade2();
	SetVolumeEX("SE*", 1000, 0, null);
	MusicStart("SE03",0,700,0,1500,null,false);
	Zoom("�G�w�i", 1000, 1000, 1000, Dxl1, false);
	Fade("�G�w�i", 1000, 1000, null, false);
	RhymeDrawFadeMax("bug01_back03");
	Fade("bug01cg_back03", 100, 1000, null, false);
	RhymeDrawFadeMax("bug04_back03");
	Fade("bug04cg_back03", 100, 1000, null, false);



/*

	CoilStartSet();
	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/ev/ev550�o�O��Ԃ̘@.jpg");
	RhymeDrawSet("�G�w�i�d�e",1000,0,0,"cg/ev/ev550�o�O��Ԃ̘@.jpg");

	CoilStartFade2();
	MusicStart("SE01",0,700,0,1000,null,false);
	RhymeDrawFade("�G�w�i�d�e");
	Fade("�G�w�i", 200, 1000, null, true);

*/

	Wait(1000);

//	MoveFTP1stop();
//	MoveFTP2stop();
//	MoveFTP3stop();
//	MoveFTP4stop();
	Delete("bug*");
	Delete("�w�i*");
	Delete("�@*");

	RMAlarmClose();
	RMAlarmDelete();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
After Noiz murmurs that&, the security Allmates enter&.

And not just a group either&, more keep popping in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000110a01">
"They just keep coming&.&.&."

//�����������̑䎌���[�i����Ă�͂��Ȃ̂ŁA�����Ȃ�������T���Ă��炦��Ə�����܂��I�i�R
{	Fw("fw�m�C�Y_�ʏ�_normal3");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000120a03">
"When I forcibly opened the Drive-By field&, it was like
 widening a pipe&."

{	Fw("fw�m�C�Y_�ʏ�_normal2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000130a03">
"So without any discrimination&, as many things as
 realistically possible will jump into Rhyme&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000140a01">
"That's some bullshit&."

{	Fw("fw�m�C�Y_�ʏ�_serious");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000150a03">
"I didn't have the time to think it out&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
The security guards just stand there&, wobbling as if 
they're not completely awake&. The Allmates are staring 
at us in clear hostility&.

Why are the guards&, instead of the Allmates&, the ones 
standing there?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000160a01">
"Aren't they&.&.&. acting a little weird?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("�G�w�i", 300, null, true);

	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051a]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000170a03">
"It's because of an Allmate bug&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000180a01">
"Bug?"

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000190a03">
"It's a minor bug that Allmates have always had&. But the
 symptoms haven't shown so strongly until suddenly this
 morning&."

//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000200a03">
"It's from the spread of this worm&. The bug corrupts them&.
 It's big news now&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_serious");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000210a03">
"The bug infects them further&, the Allmates end up
 unable to control themselves and go violent&. And for some
 reason&, the owners of infected Allmates lose their
 willpower&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000220a03">
"When Allmates are registered&, the owner has a recognition
 chip physically put inside them and they connect online&.
 I think that's why&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000230a01">
"Allmates and their owners share consciousness when they're
 online&, so if you reverse the route&, Allmates could
 possibly corrupt their human's mind&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000240a03">
"Probably&. All the newer models are going crazy&. But for
 some reason&, the bug was never fixed in the first place&."

{	St("C",740, @0,@0,"st�m�C�Y_�ʏ�_normal3");
	FadeSt("C",200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000250a03">
"If you look at how you could see this happening from the
 get-go and how the bug was found out&, you can tell that
 Toue is one sneaky bastard&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000260a01">
"Then maybe Ren has that bug&.&.&."

{	Fw("fw�~���N_�ʏ�_normal2");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/7000270a05">
"All the almates with the bug have a crystal-like shape
 come out in front of their eyes&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000280a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F�t���b�V���o�b�N�����v
	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʔw�i", 1050, Center, Middle, "cg/ev/ev004���@�N��b.jpg");

	DeleteAllSt(0,true);

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
A scrap of crystal&.
Ren's eye showed that symptom&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("�G����*");

	CreateTextureEX("�G�w�i�k", 100, 0, -100, "cg/ev/l/ev550�o�O��Ԃ̘@_l.jpg");

	Move("�G�w�i�k", 60000, -1024, @0, null, false);
	Fade("�G�w�i�k", 0, 1000, null, true);

	EfRecoIn2(400);

//�������u���F�����ŉ�ʖ߂��v

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000290a01">
"So it was because of that bug&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�ʏ�_sad");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/7000300a02">
"Did Ren show that symptom?"

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000310a01">
"Yeah&.&.&."

{	Fw("fw�g��_�ʏ�_angry3");}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/7000320a02">
"Hey&. Isn't there some way to help Ren?"

{	Fw("fw�m�C�Y_�ʏ�_cool2");}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000330a03">
"They say on the news that someone's making a way to fix
 it&, but I wonder about that&."

{	Fw("fw�N���A_�ʏ�}�X�N����_normal");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/7000340a04">
"Ren-san&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000350a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	Wait(200);

//	DeleteFw();

	FadeDelete("�G�w�i�k", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
Ren&.&.&.

{
	$StPos�g��=ML;
	$StPos�~���N=RR;
	$StPos�N���A=MR;
	$StPos�m�C�Y=LL;

	$StPri�g��=740;
	$StPri�~���N=730;
	$StPri�N���A=735;
	$StPri�m�C�Y=720;

	St($StPos�g��,$StPri�g��, @0,@0,"st�g��_�ʏ�_angry3");
	St($StPos�~���N,$StPri�~���N, @0,@0,"st�~���N_�ʏ�_normal2");
	St($StPos�N���A,$StPri�N���A, @0,@0,"st�N���A_���ʃ}�X�N����_normal");
	St($StPos�m�C�Y,$StPri�m�C�Y, @0,@0,"st�m�C�Y_�ʏ�_normal");
	FadeSt($StPos�g��,300,false);
	FadeSt($StPos�~���N,300,false);
	FadeSt($StPos�N���A,300,false);
	FadeSt($StPos�m�C�Y,300,true);
}
I set myself straight and look at everyone&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000360a01">
"There's a way to save him&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000370a01">
"I'll explain in detail later&, but to save Ren right now&.&.&. I'll use Scrap on myself&."

{	St($StPos�m�C�Y,$StPri�m�C�Y, @0,@0,"st�m�C�Y_�ʏ�_angry");
	FadeSt($StPos�m�C�Y,200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000380a03">
"&.&.&.What?"

{	St($StPos�~���N,$StPri�~���N, @0,@0,"st�~���N_�ʏ�_angry");
	FadeSt($StPos�~���N,200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/7000390a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/7000400a04">
"Master&.&.&."

{	St($StPos�g��,$StPri�g��, @0,@0,"st�g��_�ʏ�_cool2");
	FadeSt($StPos�g��,200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm54/7000410a02">
"Scrap?�@On yourself? Can you even do that?"

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000420a01">
"We don't know until we try&. It might turn out fine&.&.&. or
 not at all&. But there's no other way&. It won't work if I
 don't do it here and now&, probably&."

{	St($StPos�~���N,$StPri�~���N, @0,@0,"st�~���N_�ʏ�_angry2");
	FadeSt($StPos�~���N,200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm54/7000430a05">
"You don't know what you're talking about&."

{	St($StPos�m�C�Y,$StPri�m�C�Y, @0,@0,"st�m�C�Y_�ʏ�_normal2");
	FadeSt($StPos�m�C�Y,200,true);}
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm54/7000440a03">
"If you use Scrap here&, you'll lose your conciousness and
 cause yourself to log out&. There's no point&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm54/7000450a04">
"That's right&, Master&. It's too dangerous&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000460a01">
"I know that&. I want everyone to cooperate with me&. I want
 to save him&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm54/7000470a01">
"I want you guys to back me up when I'm in Scrap&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	SetVolumeEX("@dm*", 3000, 0, null);

//�����t�@�C��["dm5480_vs.nss"]

}
