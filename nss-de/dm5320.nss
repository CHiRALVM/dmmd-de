//<continuation number="110">
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


scene dm5320.nss_MAIN
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
	#bg304141_5_���]�^���[�p�[�e�B�z�[�����l=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5330.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;
}


scene dm5320.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg304141_5_���]�^���[�p�[�e�B�z�[�����l");
	FadeBG(500,true);

	Delete("��w�i");

//�e�F���̓�瑋�Ȃ��ɂ��Ă܂����A�K�v�Ȃ�R�����g�A�E�g�O���艺����
//	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000010a01">
"�\�\�\�\!!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSP("�G��/�G����", 4000, "000000");
	CreateColorSPmul("�G����", 3000, "000000");
	DrawTransition("�G��/�G����", 0, 0, 200, 1000, null, "cg/data/circle_02_00_1.png", true);

	CreateTextureSP("�G�w�i", 1000, Center, -85, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[�����l_l.jpg");
	CreateTextureSP("�G�w�i��", 500, Center, -85, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[�����l_l.jpg");

	SetShade("�G�w�i", MEDIUM);

	Fade("�G����", 0, 300, null, true);

	FadeDelete("�G�F��", 2000, null, true);

	Wait(500);

//	Fw("fw���t_�ʏ�_worry2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�w�i", 500, null, false);
	FadeDelete("�G����", 500, null, false);

	DrawTransition("�G��/�G����", 500, 200, 0, 1000, Dxl1, "cg/data/circle_02_00_1.png", true);
	Delete("�G��/�G����");
	Delete("�G��*");

	Wait(500);

//	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000030a01">
"&.&.&.Ah&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
What? I just&.&.&.

Was out&.&.&.

Did I fall asleep?
Here?

But&, that really was a bad dream&.&.&.

My heart is still pounding&.
And I'm completely drenched in sweat&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 500, 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
�@�\�\�\�\�@I want to destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginF(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�F��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
&.&.&.Those words suddenly surface in my mind&.

I want to destroy something?

But what?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ƀ��x���F�R
//�����o�F������A�Ɠ���
$HALevel=3;
	HAFade(2000, 0,ture);

//	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000040a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
My head hurts&.
I need to take my meds&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm018",0,450,true);

	Move("�G�w�i��", 1000, @0, @-50, Dxl1, false);
	FadeDelete("�G�w�i��", 1000, null, true);

	DrawDelete("�G��/�G����", 1000, 500, null, "circle_02_00_1", true);
	Delete("�G��/�G����");

	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000050a01">
"&.&.&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
&.&.&.I finally register what is going on&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G���o", 1100, -768, InBottom, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[�����l_l.jpg");

	FadeDelete("�G��", 500, null, false);
	Move("�G���o", 2000, -256, @0, AxlDxl, true);

	FadeDelete("�G���o", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
All of the extravagant guests in the hall&.&.&.
They've all collapsed onto the ground&.

There's not a single one left standing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000060a01">
"&.&.&.Why&.&.&. What&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I can't find any words to describe this bizarre display&.

What happened here&.&.&.?

I know I went in here looking for Ren&, and then&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 9000);

//�������\��
//��������Ƌ������ɁB���������Ō����Ȃ������t�̌��e
	CreateTextureSP("�G�w�i", 5000, Center, Middle, "cg/bg/bg304141_5_���]�^���[�p�[�e�B�z�[�����l.jpg");

	TemptationNoizSet("�G�������t�U�f������",4102);
	TemptationAobaSet("�G�������t�U�f",4100,Center,Middle,"cg/ev/m/ev900�����P�l�̑��t_m.jpg",1000,1000);

	CreateColorSP("�G�F��", 5000, "000000");
	CreateColorSP("�G�������t�U�f���B", 4110, "000000");
	DrawTransition("�G�������t�U�f���B", 1, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�������t�U�f", 0, 1000, null, true);

	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	Fade("�G�w�i", 0, 0, null, true);
	Delete("�G��");

//�����Ƀ��x���F�S
$HALevel=4;
	HAFade(7000, 0,false);

	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,true);
	TemptationDelete("@�G�������t�U�f���B");
	Delete("�G�F��");

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000070a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Delete("�G�w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
My memories flicker along with my pounding headache&.

But I can only remember it vaguely&, like it was only a 
dream&.

Why was I lying around here?

What in the world happened&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("�G�w�i");

	CreateTextureEX("�G�w�i", 100, Center, InBottom, "cg/bg/m/bg304141_5_���]�^���[�p�[�e�B�z�[�����l_m.jpg");
	Move("�G�w�i", 0, @-100, @0, null, true);
	Move("�G�w�i", 1000, @-50, @0, Dxl1, false);
	Fade("�G�w�i", 1000, 1000, null, true);

	Wait(100);

	CreatePlainSP("�G��", 5000);
	CreatePlainSP("�G��", 5000);

	CreateMaskSetSP("�G��", 2000, 0, 0, "ci���C��_01_00", true, "ci���C��_01_00z");
	CreateTextureSP("�G��/�G�w�i", 1010, Center, InBottom, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[�����l_l.jpg");
	CreateTextureSP("�G��/�G���G", 1101, 1024, 0, "cg/st/x/stAM�@_�ʏ�_normal_x03.png");
	CreateTextureSP("�G��/�G���G��", 1100, 1024, 0, "cg/st/x/stAM�@_�ʏ�_normal_x03.png");

	Request("�G��/�G���G*", Smoothing);
	Request("�G��/�G�w�i", Smoothing);

	SetShade("�G��/�G�w�i", MEDIUM);
	SetShade("�G��/�G���G��", LIGHT);

	DrawTransition("�G��/�G���G", 0, 0, 380, 200, null, "cg/data/circle_13_00_0.png", true);

	Zoom("�G��/�G�w�i", 0, 2000, 2000, null, true);
	Rotate("�G��/�G���G*", 0, @0, @0, @30, null,true);

	Move("�G��/�G�w�i", 0, -330, -1150, Dxl1, true);
	Move("�G��/�G���G*", 0, 210, 60, Dxl1, false);

	Move("�G��/�G�w�i", 500, @-50, @0, Dxl1, false);
	Move("�G��/�G���G*", 500, @-100, @0, Dxl1, false);
	DrawDelete("�G��", 500, 100, null, "slide_05_01_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I look around the hall&, and see a fallen bundle of fur a 
little farther off&.

That's&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G��/�G*");
	Delete("�G��*");

	FadeDelete("�G�w�i", 500, null, false);
	DrawDelete("�G��", 100, 100, null, "slide_05_01_1", true);

	Wait(500);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000080a01">
"Ren!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i100", 100, -818, -572, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[�����l_l.jpg");
	Move("�G�w�i100", 500, -918, -572, Dxl1, false);
	Fade("�G�w�i100", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
I get up&, forgetting about my headache&, and run over to 
Ren&.

I hold up his limp body&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1200,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000090a01">
"Hey! Ren! Are you okay!? Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,600,null,false);

	Wait(1000);

	CreateSE("SE02","se����_�R�C��_�A���[�g");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I try to start Ren up&.
But it doesn't work&.

No matter how many times I try&, his eyes won't open&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000100a01">
"&.&.&.This can't be real&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
My face turns pale&.

I thought that maybe it was because of his weird condition&. 

But&, all of a sudden&, he&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/2000110a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
I push away my emotions and put Ren into my bag&.

Now I have an even more urgent reason to find a way to fix 
Ren&, but staying around here is dangerous&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm5330.nss"]

}
