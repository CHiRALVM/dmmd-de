//<continuation number="40">
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


scene dm3090.nss_MAIN
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
	#bg302051_5_�O���b�^�[�O�ʂ�=true;
	#bg302052_5_�O���b�^�[�O�ʂ�O���b�^�[�Ŕ�=true;
	#bg302051_5_�O���b�^�[�G���g�����X=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm3100.nss";

}


scene dm3090.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
	FadeBG(0,true);

//���F�a�f�l�����p������
	SoundPlay("@dm004",0,450,true);

	Delete("��w�i");
	DrawDelete("�G�F��", 500, 100, null, "blind_01_00_1", true);

	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
We turn a corner into the marked lodging and we came upon 
a palace-like&, single standing house&.

It seems there were various ranks within it&, and our small two story building was at the end of it&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/9000010a01">
"Is it here?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
Compared to the other buildings&, this one seems a little 
older&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	OnBG(10,"bg302052_5_�O���b�^�[�O�ʂ�O���b�^�[�Ŕ�");
	FadeBG(1000,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Above the door is a plate with the word GLITTER written on it&.

The other buildings have other words written above them&, 
so they must be named individually&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	OnBG(10,"bg302051_5_�O���b�^�[�O�ʂ�");
//	FadeBG(1000,true);

	Fw("fw�~���N_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/9000020a05">
"Put your Coil to it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
Mink jerks his chin to the confirmation monitor by the 
door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���R�C�����������A�h�c��ǂݎ��
//���h�A���J����
	Wait(300);

	CreateSE("SE01","se����_�R�C��_���쉹02");//�������u�r�d�Fse����_�R�C��_���쉹02�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
I show my Coil up to the monitor&, and the retro-style
doorknob twists open&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se����_�O���b�^�[����_���J��01a");//�������u�r�d�Fse����_�O���b�^�[����_���J��01�v
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("�G����", 5000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, -200, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateTextureSP("�G�w�i��", 200, Center, 0, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");
	CreateColorEXadd("�G�w�i��", 3000, "WHITE");
	Fade("�G�w�i��", 0, 1000, null, true);

	Move("�G�w�i��", 3000, @156, @0, null, false);

	FadeDelete("�G����", 500, null, true);
	FadeDelete("�G�w�i��", 1000, null, false);

	Wait(2000);

	Move("�G�w�i", 3000, @-156, @0, null, false);
	FadeDelete("�G�w�i��", 500, null, true);

	Wait(2000);

	FadeDelete("�G�w�i", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
When I go inside&, I'm astonished&.

I thought it looked rather old-fashioned&, and the interior emphasized it even more&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�~���N_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm30/9000030a05">
"It has an old-fashioned feel to it&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
Mink comments while looking around the room&.

We had the same opinion&.

With all of the wood everywhere&, it was like I warped into another world&. There's hardly anything like Platinum Jail&.

Everything here looks like it's been repaired to 
mint condition&, and there's a staircase that leads to the 
second floor in the middle&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm30/9000040a01">
"This is amazing&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateTextureEX("�G�w�i", 100, -890, InBottom, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,700,0,750,null,false);

	Move("�G�w�i", 500, @0, @100, Dxl1, false);
	Fade("�G�w�i", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I sit down on the sofa and gaze around the room&.

The sofa is so soft that I can feel myself sink into it&.
It relaxes me&.

When I lean into the sofa&, I let out a deep breath&.

It's been so stressful until now&.&.&.

And to make matters worse&, I'm stuck with Mink here&. 
He's pretty difficult&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainEX("�G��", 5000);
	SetShade("�G��", SEMIHEAVY);
	Fade("�G��", 1000, 1000, null, true);
	Wait(300);
	Fade("�G��", 500, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
I sink further into the sofa and my eyelids gradually
grow heavier and heavier&.

{	Fade("�G��", 500, 250, null, true);}
Don't fall asleep here&.&.&. crap&.

But I don't feel like I have enough strength to even 
stand&.&.&.

Or rather I can't even try&.&.&.

I was running all the way here&.&.&.

Right now&.&.&. I guess I could sleep a little&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G��", 500, 250, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
Just a little&.&.&.

&.&.&.&.&.

&.&.&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);
	Fade("�G��", 1000, 1000, null, true);

	ClearFadeAll(2000, true);
	Wait(1000);

//�����t�@�C��["dm3100.nss"]

}
