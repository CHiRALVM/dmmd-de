//<continuation number="50">
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


scene dm0670_vs.nss_MAIN
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
	$GameName = "dm0680.nss";

}


scene dm0670_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg402031_1_��������֎~���H�ꕔ��01");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i��", 1900, Center, Middle, "cg/bg/bg402031_1_��������֎~���H�ꕔ��01.jpg");

	CreateTextureSP("�G�}�X�N�g", 2002, 0, 0, "cg/mask/ci�X���b�V��_05_00z.png");

	CreateMask("�G�}�X�N��", 2000, 0, 0, "cg/mask/ci�X���b�V��_05_00.png", true);
	SetAlias("�G�}�X�N��","�G�}�X�N��");
	CreateTextureSP("�G�}�X�N��/�G�w�i", 2000, Center, Middle, "cg/bg/bg402031_1_��������֎~���H�ꕔ��01.jpg");
	Zoom("�G�}�X�N��/�G�w�i", 0, 1500, 1500, null, true);
	Request("�G�}�X�N��/�G�w�i", Smoothing);
	SetShade("�G�}�X�N��/�G�w�i", MEDIUM);

	CreateTextureSP("�G�}�X�N��/�Gst", 2001, 0, InBottom, "cg/bu/bu�N���A_���ʃ}�X�N����_normal.png");
	Move("�G�}�X�N��/�G�w�i", 0, 251, -30, null, true);
	Move("�G�}�X�N��/�Gst", 0, 51, -32, null, true);

	CreateMask("�G�}�X�N�E", 1500, 0, 0, "cg/mask/ci�X���b�V��_05_01.png", true);
	SetAlias("�G�}�X�N�E","�G�}�X�N�E");
	CreateTextureSP("�G�}�X�N�E/�G�w�i", 1500, Center, Middle, "cg/bg/bg402031_1_��������֎~���H�ꕔ��01.jpg");
	Zoom("�G�}�X�N�E/�G�w�i", 0, 1500, 1500, null, true);
	Request("�G�}�X�N�E/�G�w�i", Smoothing);
	SetShade("�G�}�X�N�E/�G�w�i", MEDIUM);

	CreateTextureSP("�G�}�X�N�E/�Gst", 1501, 0, InBottom, "cg/bu/bu�~���N_�ʏ�_angry2.png");
	Move("�G�}�X�N�E/�G�w�i", 0, -249, 113, null, true);
	Move("�G�}�X�N�E/�Gst", 0, 507, -85, null, true);

//���F�a�f�l�����p������
	SoundPlay("@dm009",0,450,true);


//==============================================
//���ȍ~�A����
//==============================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	DrawDelete("��w�i", 300, 100, null, "blind_02_00_1", true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm06/7000010a04">
"Master-! I hear more sounds coming from the inside!
 They're gathering!"

{	Move("�G�}�X�N�E/�Gst", 300, 457, -85, Dxl1, false);
	DrawDelete("�G�w�i��", 300, 100, null, "blind_02_00_1", true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm06/7000020a05">
"So this was a decoy&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_���01");//�������u�r�d�Fse�l��_����_����01�v
	CreatePlainSP("�G��", 5000);
	Delete("�G�}�X�N��/�Gst");
	Delete("�G�}�X�N��/�G�w�i");
	Delete("�G�}�X�N��");
	Delete("�G�}�X�N�g");
	Delete("�G�}�X�N�E/�Gst");
	Delete("�G�}�X�N�E/�G�w�i");
	Delete("�G�}�X�N�E");

	OnBG(10,"bg402031_1_��������֎~���H�ꕔ��01");
	FadeBG(0,true);

	MusicStart("SE01",0,700,0,800,null,false);
	DrawDelete("�G��", 300, 100, null, "slide_03_01_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Mink quickly starts running into the interior of the 
factory&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�퓬����_shout");
	St("C",740, @0,@0,"st�g��_�퓬����_pinch");
	FadeSt("C",200,true);

	FadeStPro("C", 1400, 200);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm06/7000030a02">
"Hey&, don't just run off&.&.&. Tch!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g����01");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
Koujaku leaves to go after Mink and the black-clothed men  who were just downed begin to rise up like zombies&.

While yelling&, Koujaku mows them down with the back of his sword&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�g��_�퓬����_shout");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
//�y�g���z 
<voice name="�g��" class="�g��" src="voice/dm06/7000040a02">
"Plucking the leaves won't kill the tree! I'll do something about this so you head in first!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm06/7000050a01">
"&.&.&.Got it! Thanks a lot!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,900,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
This isn't the time to hesitate&. 

I run with Clear and Mink to the inner parts of the 
factory&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�������u���o�F�������̃A�b�v�G�v
	CreateTextureEX("�G�w�i", 100, -930, Middle, "cg/bg/l/bg402031_1_��������֎~���H�ꕔ��01_l.jpg");
	Fade("�G�w�i", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
I can see the front passageway&.&.&.
Is this the entrance?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "000000");
	Zoom("@OnBG*", 1000, 3000, 3000, null, false);
	Fade("�G�F��", 300, 1000, null, true);

//�����t�@�C��["dm0680.nss"]

}
