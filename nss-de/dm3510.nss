//<continuation number="80">
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


scene dm3510.nss_MAIN
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
	#ev960�N���A���͍s�ga=true;
	
	#bg304102_5_���]�^���[���z�[���A���O����=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3520.nss";

}


scene dm3510.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);

	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE01","se�l��_����_�w�炷01");//�������u�r�d�Fse�l��_����_�w�炷01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	DeleteAllSt(200,true);}
As Toue says that&, he raises his hand and snaps his 
fingers&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	St("C",740, @0,@0,"st�N���A��_�ʏ�}�X�N����_normal");
	FadeSt("C",200,true);

	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
One of the guards from the back walks up&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm35/1000010b02">
"Originally&, I didn't want to use such measures&.&.&. but
 you're my last hope&. I can't just let you go&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
The guard spans his arms out and takes a deep breath&.
He looks as if he's posing as an opera singer&.

But&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm020",2000,450,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/1000020a01">
"&.&.&.Wait&, a song?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F�N���A���̐��v
	CreateTextureEX("�G�d�u", 1100, Center, -500, "cg/ev/ev960�N���A���͍s�ga.jpg");
	Move("�G�d�u", 1500, @0, 0, Dxl1, false);
	Fade("�G�d�u", 1500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The guard actually started to sing&.

It rings out at a high key and the strange melody echoes 
throughout the white space&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Move("�G�d�u", 500, @0, 0, Dxl1, true);

	dm3510song();

	FwPro("fw���t_�ʏ�_worry4",1200,"fw���t_�ʏ�_pinch");
//	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/1000030a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainEX("�G��", 5000);
	Zoom("�G��", 0, 1050, 1050, null, true);
	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeFFR2("�G��", 0,800, 200, 0, 0, 50,null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
As the melody enters my ears&, I'm hit with a shock of pain 
inside my head&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F�N���A���̐����ʁA�Ƃ肠����������v
//�������u���F���b�v�������J���������邮��񂵂��ق������ʓI�����v
//	CreatePlainSP("�G��", 5000);
//	DrawEffect("�G��", 0, "Ripple", 100, 100, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("�G�d�u");
	dm3510songdelete();

	CreateTextureEX("�G��", 1500, Center, 0, "cg/bg/bg304091_5_���]�^���[���z�[��.jpg");
	Request("�G��", Smoothing);
	Zoom("�G��", 0, 1250, 1250, null, true);


	$���[�v���[�u�i�b�g�� = "@�G��";
	$���[�v���[�u�^�C�� = 25000;
	CreateProcessEX("�v���Z�X���}�C", "FlyMovingXXX");
	Request("�v���Z�X���}�C", Start);

	Fade("�G��", 0, 600, null, true);

	Wait(16);
	DrawDelete("�G����", 200, 100, null, "slide_03_01_1", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
My vision goes darker and darker&, and I can feel my legs 
starting to give out from under me&.

What?
What's going on&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�퓬_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm35/1000040a05">
"&.&.&.! This song&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
Mink deeply groans as his expression twists in pain&.

Even Mink is affected&.&.&.?

Is it because of this song?
What the hell is that song doing&.&.&.!?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"st���]_�ʏ�_normal");
//	FadeSt("C",0,true);

//	CreatePlainSP("�G�ʓ�", 4990);
//	DrawEffect("�G�ʓ�", 0, "Ripple", 100, 100, null);

//	FadeDelete("�G��", 1000, null, true);
	Fw("fw���]_�ʏ�_smile");


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm35/1000050b02">
"Heh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
Toue laughs behind the singing guard&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_smile");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm35/1000060b02">
"Now&, this is a test&. I wonder how long you can hold
 out for?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DrawEffect("�G�ʓ�", 5000, "Ripple", 100, 200, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I see Toue's face&.&.&. distorting&, as he speaks&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm35/1000070a01">
"&.&.&.Ugh&.&.&."

{	Fw("fw�~���N_�퓬_pain");}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm35/1000080a05">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	OnBG(10,"bg304102_5_���]�^���[���z�[���A���O����");
//	FadeBG(0,true);
//	St("C",740, @0,@0,"st�~���N_�퓬_pain");
//	FadeSt("C",0,true);

//	CreatePlainSP("�G�ʎQ", 4980);
	CreateTextureEXmul("�G�w�i", 2000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G�w�i", 0, 1250, 1250, null, true);
	CreateSE("SE01","se�[��_����_������01L");//�������u�r�d�Fse�[��_����_�m�C�Y01�v
	MusicStart("SE01",0,700,0,1000,null,true);
	Shake("�G�w�i", 100000, 2, 1, 0, 0, 500, null, false);
	Fade("�G�w�i", 0, 500, null, true);
	Fade("�G�w�i", 100, 0, null, true);
	Fade("�G�w�i", 0, 500, null, true);
	Fade("�G�w�i", 100, 0, null, true);
	Fade("�G�w�i", 0, 500, null, true);
	Fade("�G�w�i", 500, 0, null, true);
	CreateColorEX("�G�F��", 1500, "000000");
	SetVolumeEX("SE01", 2000, 0, null);
	Fade("�G�F��", 3000, 800, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
&.&.&.Not good&.

The song is echoing in my head&, his voice like a raging 
flood in my mind&.&.&.

I can't think&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DrawEffect("�G�ʎQ", 0, "Ripple", 200, 200, null);
//	FadeDelete("�G�ʓ�", 500, null, true);



//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
In my hazy vision&, I see Mink staggering&.

Mink&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 100, 0, null);
	CreateSE("SE01","se�[��_����_�m�C�Y01");//�������u�r�d�Fse�[��_����_�m�C�Y01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("�G������", 5000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("�G������", 0, 1100, 1100, null, true);
	Wait(30);
	Fade("�G�F��", 0, 900, null, true);
	Fade("�G������", 70, 0, null, true);

//�����o������Ȃ�ȉ��Q�n�̕��Ȃ��Ă������悤�ȁi���q
//���폜���܂���

//���������������Ɖ�ʂɍ��������傢���傢�����Ă��āA

	CreateSE("SE01","se�[��_����_�m�C�Y01");//�������u�r�d�Fse�[��_����_�m�C�Y01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G������", 0, 1000, null, true);
	Wait(10);
	Fade("�G������", 70, 0, null, true);

	Wait(10);

	CreateSE("SE01","se�[��_����_�m�C�Y01");//�������u�r�d�Fse�[��_����_�m�C�Y01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G������", 0, 1000, null, true);
	Wait(10);
	Fade("�G������", 70, 0, null, true);
	Fade("�G�F��", 1000, 1000, null, true);

	CreateSE("SE01","se�[��_����_�m�C�Y01");//�������u�r�d�Fse�[��_����_�m�C�Y01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G������", 0, 1000, null, true);
	//Shake_Loop("@�G������","shake01");
	SetBlur("�G������", true, 2, 500, 10, false);
	Shake("�G������", 60000000, 0, 20, 0, 0, 1000, null, false);
	Delete("�G��*");
	Delete("�v���Z�X���}�C");
	Delete("�G��");

//������n�̕��H�R�����g�A�E�g�t���Y�ꂽ�n�̐����ł́B�i���q
//���폜���܂���

//�����t�@�C��["dm3520.nss"]

}
