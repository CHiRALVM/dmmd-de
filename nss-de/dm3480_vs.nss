//<continuation number="120">
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


scene dm3480_vs.nss_MAIN
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
	#ev920�~���N�A�o�C�N����=true;
	#bg304031_5_���]�^���[�L��01=true;
	#bg304032_5_���]�^���[�L��02=true;
	#bg304033_5_���]�^���[�L��03=true;
	#bg304061_5_���]�^���[�K�i=true;
	#bg304062_5_���]�^���[�K�i�ʃA���O��=true;
	#bg304112_5_���]�^���[���z�[�����O=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3490.nss";

}


scene dm3480_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304033_5_���]�^���[�L��03");
	FadeBG(0,true);
	CreateTextureEX("�G�w�i", 100, -700, Middle, "cg/bg/l/bg304033_5_���]�^���[�L��03_l.jpg");
	Fade("�G�w�i", 0, 1000, null, true);

	CreateSE("SE01L","se�敨_�����o�C�N_�A�C�h�����O01L");
	CreateSE("SE02","se�敨_�����O�o�C�N_�}�u���[�L01");

	Move("�G�w�i", 1000, -500, @0, Dxl2, false);
	Shake("�G�w�i", 1000, 0, 10, 0, 0, 1000, null, false);

	MusicStart("SE01L",2000,500,0,1200,null,true);
	MusicStart("SE02",0,700,0,1200,null,false);
	DrawDelete("��w�i", 500, 300, null, "slide_05_00_0", true);

//	FadeDelete("��w�i", 1000, null, true);

	Wait(500);
	FadeDelete("�G�w�i", 500, null, true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/8000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
An image of a pure white wall as clear as a mirror&, a 
floor&, and a ceiling reflects in my eyes&.

This is the inside of Oval Tower&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

SoundPlay("@dm008",0,450,true);


{	Fw("fwm�x��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm34/8000020e16">
"What!? &.&.&.! I've found intruders!"

{	Fw("fwm�x��C_�ʏ�_normal");}
//�y�x���b�z
<voice name="�x���a" class="�x���a" src="voice/dm34/8000030e17">
"Hey! Stop right there!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	CreateSE("SE01","se�퓬_�e_�\����01����");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
A group of rifle-holding guards appear from the hallways&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	CreateTextureEX("ev1", 50, Center, 150, "cg/bg/bg304033_5_���]�^���[�L��03.jpg");
	SetShade("ev1", HEAVY);
	Zoom("ev1", 0, 1800, 1800, null, true);
	CreateTextureEX("ev2", 600, -47, -65, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_�l��.png");
	Request("ev*", Smoothing);

	Rotate("ev2", 0, @0, @0, -20, null,false);

//���r�d�F�Ԃ���A�ƃA�N�Z�����ӂ���
	SetVolumeEX("SE01L", 500, 0, null);

	CreateSE("SE01","se�敨_�����o�C�N_�G���W���ӂ���01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("ev2", 400, 0, 5, 0, 0, 1000, null, false);
	Fade("ev1", 250, 1000, null, false);
	Fade("ev2", 250, 1000, null, true);


//	Fw("fw�~���N_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/8000040a05">
"Don't get thrown off&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

//�������u���o�F�o�C�N����"www.nicovideo.jp/watch/sm8953033"�����ӂ���Q�l�Ɂv
	CreateTextureEX("�G�d�u", 1100, -688, -68, "cg/ev/ev920�~���N�A�o�C�N����.jpg");
	SetBlur("�G�d�u", true, 1, 500, 100, false);

	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");//�������u�r�d�F�v
	CreateSE("SE02","se�敨_�����o�C�N_�}����01");
	CreateSE("SE90L","se�敨_�����o�C�N_���s01L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("ev2", 1000, 0, 5, 0, 10, 1000, Axl1, false);
	Move("ev2", 800, @-2000, @0, Axl2, true);

	MoveFTP1("@�G�d�u",2000,8,5);
	Fade("�G�d�u", 0, 1000, null, true);
	DrawTransition("�G�d�u", 250, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	MusicStart("SE90L",500,400,0,800,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
The sharp engine groans and the bike takes off&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/8000050a01">
"-Wah&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�x��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm34/8000060e16">
"Wait! Guagh!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
Mink throws around security on his way&, beating the floor 
down with his tires and driving through the hallway with 
ease&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�x��C_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y�x���b�z
<voice name="�x���`" class="�x���`" src="voice/dm34/8000070e16">
"You bastards&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm34/8000080e17">
"Wait!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�e������
	CreateSE("SE01","se�퓬_�e_���C�x����01����");
	MusicStart("SE01",0,700,0,1000,null,false);
	MFlash(15, 5);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
The sounds of firing follow behind us&.

I'm a bit scared&, but Mink swerves around&, avoiding the 
shots&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);
//���r�d�F�G���W���̚X��
	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE02","se�敨_�����O�o�C�N_���苎��");
	MusicStart("SE01",0,700,0,900,null,false);
	MusicStart("SE02",0,700,0,900,null,false);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	OnBG(10,"bg304062_5_���]�^���[�K�i�ʃA���O��");
	FadeBG(0,true);
	MoveFTP1stop();
	Delete("�G�d�u");


	CreateTextureEX("�G�d�u", 1100, -688, -68, "cg/ev/ev920�~���N�A�o�C�N����.jpg");
	SetBlur("�G�d�u", true, 1, 500, 100, false);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
Pushed around by the force when we turn corners&, we 
continue on our way&.

We shake off the trailing guards and face a staircase down the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(16);

	CreateTextureEX("ev0", 50, Center, middle, "cg/bg/bg304061_5_���]�^���[�K�i.jpg");
	Zoom("ev0", 0, 1100, 1100, null, true);
	CreateTextureEX("ev1", 50, Center, middle, "cg/ef/efbg����03.jpg");
	SetShade("ev1", HEAVY);
	Zoom("ev1", 0, 1100, 1100, null, true);
	CreateTextureEX("ev2", 600, -412, -74, "cg/ev/ev920�~���N�Ƒ��t�o�C�N_�l��.png");
	Rotate("ev2", 0, @0, @0, 10, null,false);
	CreateTextureEX("ev3", 600, Center, middle, "cg/bg/bg304062_5_���]�^���[�K�i�ʃA���O��.jpg");
	Zoom("ev3", 0, 1200, 1200, null, true);
	Rotate("ev3", 0, @0, @0, @-10, null,true);
	Request("ev*", Smoothing);

	Shake("ev*", 500, 2, 5, 0, 0, 800, null, false);
	MoveFTP2("@ev3",2000,8,10);
//	Move("mv0", 0, @-100, @0, null, true);
	Fade("mv0", 0, 300, null, false);
	Fade("ev0", 0, 1000, null, true);
	DrawDelete("�G����", 200, 100, null, "slide_01_03_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032a]
&.&.&.Wait&, a staircase!?

Are we going to go up it!?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	TextBoxDelete(0);

	Wait(32);

	CreateMovieEX("mv0", 2000, center, middle, true, true, "dx/mv0003�W����01_��.ngs");
	Zoom("mv0",0,5000,5000,null,true);
	CreateMovieEX("mv1", 2000, 120, 170, true, true, "dx/mv0003�W����04_��.ngs");
	Zoom("mv1",0,5000,5000,null,true);
	Rotate("mv1", 0, @0, @0, 25, null,false);
	CreateMovieEX("mv2", 2000, center, middle, true, true, "dx/mv0003�W����03_��.ngs");
	Zoom("mv2",0,3000,3000,null,true);

	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE01b","se�敨_�����O�o�C�N_�}�u���[�L01");
	CreateSE("SE01c","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE01d","se�敨_�����O�o�C�N_�}�u���[�L01");
	CreateSE("SE02","se�敨_�����o�C�N_�G���W���ӂ���01");
	CreateSE("SE02b","se�敨_�����o�C�N_�G���W���ӂ���02");
	CreateSE("SE02c","se�敨_�����o�C�N_�G���W���ӂ���01");
	CreateSE("SE02d","se�敨_�����o�C�N_�G���W���ӂ���01");
	CreateSE("SE03","se�敨_�����o�C�N_���n01");
	CreateSE("SE03b","se�敨_�����o�C�N_�}����01");
	CreateSE("SE03c","se�敨_�����o�C�N_���n01");
	CreateSE("SE10","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE11","se�敨_�����o�C�N_�}����01");
	CreateSE("SE12","se�敨_�����o�C�N_���s01L");

	SetVolumeEX("SE90L", 1000, 0, null);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);

	Shake("ev*", 50000, 2, 5, 0, 0, 800, null, false);
	Zoom("ev0", 300, 2000, 2000, Axl2, false);
	MoveFTP1("@ev2",2000,8,10);
	Fade("mv0", 250, 0, null, false);
	Fade("mv1", 250, 200, null, false);
	Fade("ev1", 250, 1000, null, false);
	Fade("ev2", 250, 1000, null, true);

	MoveFTP2stop();

	Wait(500);

	MusicStart("SE01b",0,700,0,1000,null,false);

	MoveFTP2("@ev3",2000,8,10);
	Rotate("mv2", 0, 180, @0, @0, null,true);
	Zoom("ev3", 500, 1200, 1200, Dxl1, false);
	Rotate("ev3", 500, @0, @0, 0, Dxl1,false);
	Fade("ev3", 250, 1000, null, false);
	Fade("mv1", 250, 0, null, false);
	Fade("mv2", 250, 200, null, true);

	Fade("ev1", 0, 0, null, true);
	Fade("ev2", 0, 0, null, true);

	MusicStart("SE02b",0,700,0,1200,null,false);
	Wait(300);

	Zoom("ev3", 500, 1800, 1800, Axl1, false);
	Rotate("ev3", 500, @0, @0, 20, Axl1,false);

	Wait(200);

	MoveFTP1("@ev2",2000,8,10);
	Zoom("ev2", 0, 2000, 2000, null, true);
	Rotate("ev2", 300, @0, @0, -20, Dxl2,false);
	Rotate("mv1", 300, @0, @0, 0, Dxl2,false);

	Fade("mv1", 250, 200, null, false);
	Fade("mv2", 250, 0, null, false);
	Fade("ev1", 0, 1000, null, false);
	Fade("ev2", 0, 1000, null, false);
	Fade("ev3", 250, 0, null, true);
	MoveFTP2stop();

	MusicStart("SE03",0,700,0,1000,null,false);
	Shake("ev2", 300, 0, 20, 0, 0, 1000, null, false);

	Wait(400);

	MusicStart("SE01c",0,700,0,1300,null,false);

	Shake("ev2", 1000, 0, 0, 3, 10, 1000, null, false);
	Wait(200);
	Rotate("mv1", 500, @0, @0, 40, Axl1,false);
	Rotate("ev2", 500, @0, @0, 30, Axl1,false);
	Wait(200);

	Zoom("ev3", 0, 1400, 1400, null, true);
	Rotate("ev3", 0, @0, 180, 0, null,true);
	Rotate("mv2", 0, @0, 180, @0, null,true);

	Zoom("ev3", 1000, 1800, 1800, Axl1, false);
	Move("ev3", 300, @0, -100, Dxl2, false);

	Fade("ev3", 250, 1000, null, false);
	Fade("mv1", 250, 0, null, false);
	Fade("mv2", 250, 200, null, true);

	Fade("ev1", 0, 0, null, true);
	Fade("ev2", 0, 0, null, true);

	MusicStart("SE02c",0,700,0,1300,null,false);

	Wait(300);

	MusicStart("SE03b",0,1000,0,1500,null,false);

	Move("ev3", 300, @0, 100, Axl1, false);
	Wait(150);

	MoveFTP1("@ev2",2000,8,10);

	Rotate("mv1", 0, @0, 180, 0, null,true);
	Fade("mv1", 100, 200, null, false);
	Fade("mv2", 100, 0, null, false);
	Rotate("ev2", 0, @0, 180, -20, null,true);
	Fade("ev1", 0, 1000, null, false);
	Fade("ev2", 0, 1000, null, false);

	Rotate("ev2", 250, @0, 180, 0, Axl1,false);
	Fade("ev3", 250, 0, null, true);

	MusicStart("SE03c",0,1000,0,1200,null,false);
	Shake("ev2", 300, 0, 20, 0, 0, 1000, null, false);

	Wait(400);


	MusicStart("SE01d",0,700,0,1150,null,false);
	Shake("ev2", 500, 0, 20, 0, 0, 1000, null, false);

	MoveFTP1stop();


	Move("ev3", 0, 0, 0, null, true);
	Zoom("ev3", 0, 1400, 1400, null, true);
	Rotate("ev3", 0, @0, 0, 0, null,true);
	Rotate("mv2", 0, @0, 0, 0, null,true);

	MusicStart("SE02d",0,700,0,1150,null,false);
	Rotate("ev2", 300, @0, 180, 30, Axl1,false);
	Move("ev2", 300, @1000, @0, Axl2, false);

	Wait(150);

	Fade("mv2", 100, 200, null, false);
	Fade("mv1", 100, 0, null, false);
	Move("ev3", 200, 0, -50, Dxl1, false);
	Fade("ev3", 100, 1000, null, true);

	Wait(150);

	MusicStart("SE10",0,700,0,1300,null,false);
	MusicStart("SE11",0,700,0,1100,null,false);
	MusicStart("SE12",500,300,0,800,null,true);


	MoveFTP3("@�G�d�u",2000,8,8);
	Move("ev3", 300, 0, 50, Axl1, false);
	Fade("mv*", 300, 0, null, false);
	Fade("�G�d�u", 300, 1000, null, true);
//	MoveFTP2stop();
	Delete("ev*");
	Delete("mv*");

	Wait(200);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
As I have my doubts about Mink's rather crazy style of 
driving&, the weight of at least two people presses on me 
as we ride up the stairs&.

The sound of his accelerator and brakes mix together&, 
further jumbled with the sound of people yelling and 
gun shots firing&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "000000");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
//	OnBG(10,"bg304032_5_���]�^���[�L��02");
	MoveFTP3stop();
	Delete("�G�d�u");
//	FadeBG(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
Within the torrents of noise&, I tightly grip onto Mink's 
back&, praying to not fall off&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/8000090a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

	Wait(500);
	CreateSE("SE01","se�敨_�����o�C�N_�X�s��01");
	CreateSE("SE02","se�敨_�����o�C�N_�G���W���ӂ���02");

	PrintGO("��w�i", 5000);
//�������u���F���]�t���A�O�Ɍ����t���A�o���̂͋���������̂ő����ȕ����g�p���Ă��܂��v
	OnBG(10,"bg304031_5_���]�^���[�L��01");
	FadeBG(0,true);
	CreateTextureEX("�G�w�i", 100, 0, Middle, "cg/bg/l/bg304031_5_���]�^���[�L��01_l.jpg");
	Fade("�G�w�i", 0, 1000, null, true);

	MusicStart("SE02",0,700,0,800,null,false);
	Wait(1000);

	Move("�G�w�i", 1500, -500, @0, Dxl1, false);

	DrawDelete("��w�i", 300, 100, null, "slide_01_03_0", true);

	Wait(500);
	Shake("�G�w�i", 1000, 0, 10, 0, 0, 1000, null, false);
	MusicStart("SE01",0,700,0,900,null,false);
	Wait(1000);
	FadeDelete("�G�w�i", 500, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
With the intense motion repeating over and over&, the bike 
finally makes it up the stairs and glides down the hallway&.

It's finally over&.&.&.

Just a little relieved&, my body loses some strength&.

I wonder how far we went up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/8000100a01">
"What floor are we on?"

{	Fw("fw�~���N_�ʏ�_normal");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm34/8000110a05">
"The top floor&."

{	Fw("fw���t_�ʏ�_angry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm34/8000120a01">
"Which means&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Toue is here?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se�敨_�����o�C�N_�G���W����~01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);
	OnBG(10,"bg304112_5_���]�^���[���z�[�����O");
	FadeBG(1000,true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Mink drives a little ways down the corridor and stops at a gigantic double door&.

//���r�d�F�G���W����؂�
{
	CreateSE("SE02","se����_�h�A_����01");
	CreateSE("SE03","se�l��_����_���03");
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(300);
	MusicStart("SE03",0,700,0,1000,null,false);
}
He gets off the bike and I jump right off of the seat with him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm3490.nss"]

}
