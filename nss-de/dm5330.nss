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


scene dm5330.nss_MAIN
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
	#bg304061_5_���]�^���[�K�i=true;
	#bg304062_5_���]�^���[�K�i�ʃA���O��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5340.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;

}


scene dm5330.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm018",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304141_5_���]�^���[�p�[�e�B�z�[�����l");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, -918, -572, "cg/bg/l/bg304141_5_���]�^���[�p�[�e�B�z�[�����l_l.jpg");

	FadeDelete("��w�i", 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	Move("�G�w�i100", 500, @0, @50, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);
}
Looking for a safe place to go&, I head towards a door 
inside the hall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304061_5_���]�^���[�K�i");
	FadeBG(0,true);

	DrawDelete("�G����", 1000, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Behind it is a staircase&. I began to trek up&, wary for any 
guards going after me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i100", 100, -320, -574, "cg/bg/l/bg304061_5_���]�^���[�K�i_l.jpg");
	Move("�G�w�i100", 2000, -655, -412, Dxl1, false);
	Fade("�G�w�i100", 2000, 1000, null, true);

	HAFade(2000, 0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
My headache&.&.&. feels even worse while going up the stairs&.
But somehow I keep my feet moving&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000010a01">
"&.&.&.Ugh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Wait(500);

	Move("�G�w�i100", 2000, -646, -88, Dxl1, true);

	CreateTextureEX("�G�w�i��", 101, -646, -88, "cg/bg/l/bg304061_5_���]�^���[�K�i_l.jpg");
	SetShade("�G�w�i��", MEDIUM);
	Fade("�G�w�i��", 500, 1000, null, true);
	FadeDelete("�G�w�i��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0017]
&.&.&.Not good&.

It's terrible&. I feel faint&.

{
	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,700,null,false);
	CreateSE("SE02","se�l��_����_�ߎC��18");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateTextureEX("�G�w�i102", 102, 0, -574, "cg/bg/l/bg304061_5_���]�^���[�K�i_l.jpg");
	Move("�G�w�i102", 500, -85, -574, Dxl1, false);
	Fade("�G�w�i102", 500, 1000, null, true);
	Delete("�G�w�i100");

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 7, 0, 0, 500, null, true);
	Delete("�G��");
}
When I made it to the stair landing&, I leaned against a 
wall and sat down&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000020a01">
"Haah&, ha&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);

	Wait(500);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 2500, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Vehemently going through my bag&, I take out my headache 
medicine&. 

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se����_�s���P�[�X_��������01");
	MusicStart("SE01",0,500,0,1400,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I just wanted to soften the pain&, so I popped a few pills 
into my mouth&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);
//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,false);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000030a01">
"Urgh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
The streams of sweat run down my temple to my chin&.

I had to wait for the medicine to kick in&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1800, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
I start to breathe hard&, and take Ren out from my bag 
and put him on my thigh&.

I try to start him up again&, but his small body still 
won't move&.

My chest hurts as I look at him&.

What happened to him&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F�R�C�����o�͌��
//���R�C������

	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���J�@�����e
	CoilRenSet(382,150);

	//���@�R�C�����o�\��
	CoilStartFade();
	//���J�@�����e�\��
	CoilRenFade();

	//�҂�
	CoilWait();

	//���J�@�����e�X�^�[�g
	CoilRenStart();

	Wait(2000);

	//���J�@�����e����
	CoilRenComp();

	Wait(500);

	//�~�D�J�@�����e���[
	$coilintoON=true;
	CoilRenDelete();

	//���R�C���҂�
	CoilWait();

	//���w�ėp�x�R�C�����[�P�wCoilAllDelete(�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	//CoilAllDelete(300,400,350);

	//�@�����e�F���C���t���[���J���F�G���[
	SetOpenMaintenance(2);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0027]
I open up the control panel on my Coil to see his status&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���r�d�F�R�C���G���[

//	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The entire panel was covered in error messages&.
In short&, he couldn't operate at all&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000040a01">
"Ren&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//�@�����e�F�T�u���j�^�[�J��(1��2)
	SetOpenSubMaintenance(1);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I mess around on the panel to possibly fix the issue with 
a tap&.

But it's no good&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000050a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	//�@�����e�F����
	CloseMaintenance();

	CoilNewDelete(400,100);

	//�҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
Too exhausted for words&, I closed the control panel and 
held Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("�G�ꖇ�G", 1000, -28, -107, "cg/ev/m/ev004���@�N��_m.jpg");
	Move("�G�ꖇ�G", 1000, -28, -178, Dxl1, false);
	Fade("�G�ꖇ�G", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
He was just like a toy with his eyes closed like that&.

The regret and sadness rushed in as I looked at his husk 
of a body&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
What if I can't return him to normal?

I'll do as much as I can&, but Ren is an old type and his 
parts are long out of production&.

My Allmate&.&.&. no&. Ren&, my partner&, is irreplaceable&.

I'm losing what I've always taken for granted&.

The reality of it all leaves me hopeless&.

It's not that I've never thought of what it'd be like 
without Ren&, but reality and my imagination are 
different things&.

It beats down on me how long I've been relying on Ren&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Delete("�G�ꖇ�G");

	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000060a01">
"What should I do now&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateColorSP("�G����", 2000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
When I close my eyes&, a face I miss appears&.

Granny&.&.&.

What should I do at a time like this?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//����z�������V�[���ƍ��킹�������Z���t���Ⴄ�H���ߗv����
//��������قǋ���

	CreatePlainSP("�G�ʂP", 10000);

	Delete("�G����");

	CreateTextureSP("��z1000", 1000, Center, Middle, "cg/bg/bg104051_5_���t���.jpg");
	St("C",1740, @0,@0,"st�^�G_�ʏ�_shout");
	FadeSt("C",0,true);

	CreateColorSP("��z�F", 5000, "#624a2b");
	Request("��z�F", OverlayRender);

	CreateTextureSPmul("��z�g", 1500, Center, Middle, "cg/ef/effi��z01.jpg");

	FadeDelete("�G�ʂP", 500, null, true);

//��z���Fdm0830.nss"�i���q
//<voice name="�^�G" class="�^�G" src="voice/dm08/3000330b03">
//�u�����āA���������Ă������~�܂�ȁB���������߂�����M���āA�O�֓˂��i�ނ񂾂�v

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�����H�F��z
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm53/3000070b03">
"And never stop&, no matter what happens&. Just believe in
 your own choices along the way and keep pushing forward&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G����", 9000, "BLACK");
	Fade("�G����", 500, 1000, null, true);

	Delete("��z*");
	DeleteAllSt(0,true);

	Wait(800);

	DrawDelete("�G����", 500, 100, null, "slide_05_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
Believe in your own choices along the way&, and keep pushing
forward&.

&.&.&.That's right&.

I can't let myself stop here&.

There are things I have to do&.

Stop Toue&.
And then save everyone in the Old Resident District&.

So&.&.&.

{
	SoundPlay("@dm016",0,450,true);
}
No matter how much it hurts&, I can't stay at a standstill&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm53/3000080a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i102", 600, @0, @50, Dxl1, false);
	FadeDelete("�G�w�i102", 600, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I put Ren back into my bag&, and then somehow get myself up by pushing my back up against the wall&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ɃG�t�F�N�g(0)
	HAFade(2000, 0,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
My headache still hasn't gone down&, but I begin to go back up the staircase once more&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G�w�i103", 103, Center, Middle, "cg/bg/bg304062_5_���]�^���[�K�i�ʃA���O��.jpg");
	Fade("�G�w�i103", 1000, 1000, null, true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
I need to get higher&.

Higher&.&.&.
Up to Toue&.

I have no other choice but to go&.

It's something&.&.&. only I can do&.

Stumbling&, with my hands against the wall&, I went up&, step by step&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("�G�w�i104", 104, -247, 0, "cg/bg/l/bg304061_5_���]�^���[�K�i_l.jpg");

	Wait(500);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
&.&.&.While going up the stairs&, I find my journey upwards 
interrupted by a door&.

Did I make it to the highest floor&.&.&.?

When I get closer to the door&, I put up the ID card that I stole from the guard by the side entrance to the 
confirmation monitor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_�R�C��_���쉹02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE02","se����_�h�A���]����_���J��01");
	MusicStart("SE02",0,700,0,1200,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

//�����t�@�C��["dm5340.nss"]

}
