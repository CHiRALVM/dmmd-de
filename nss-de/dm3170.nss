//<continuation number="60">
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


scene dm3170.nss_MAIN
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
	$GameName = "dm3180.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=2;

}


scene dm3170.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	OnBG(10,"bg302051_5_�O���b�^�[�G���g�����X");
	FadeBG(0,true);

	CreateTextureSP("�G��", 100, Center, Middle, "cg/bg/bg302051_5_�O���b�^�[�G���g�����X.jpg");
	CreateColorSPmul("�G����", 3000, "000000");
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 0, 1000, null, true);
	Fade("�G����", 0, 500, null, true);

	CreateSE("SE01","se�l��_����_�ߎC��24");
	MusicStart("SE01",0,600,0,800,null,false);

	SetShade("�G��", MEDIUM);

	FadeDelete("��w�i", 2000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
I hear the sound of something rustling&, and then feel my 
body being pulled&.&.&.

And suddenly&, I'm thrown out onto a solid floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���ǂ����Ə��ɓ|�ꂱ�ޑ��t
	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(800);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/7000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawTransition("�G�F��", 1000, 1000, 500, 100, Dxl1, "cg/data/slide_05_00_0.png", true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
I open my eyes&, thinking I would be at the club&, but what 
I see is completely different&.

Where&.&.&. is this?

{
	DrawTransition("�G�F��", 500, 500, 800, 100, Dxl1, "cg/data/slide_05_00_0.png", true);
}

While lightly thinking on it&, I naturally close my eyelids&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawTransition("�G�F��", 500, 800, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(800);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 150, 1000, Dxl1, true);
	Delete("�G��");
	Delete("�G����");
	Delete("�G�F��");
	Wait(30);
	FadeDelete("�G�F��", 150, Dxl1, true);

//���o�L�b�Ɗ��������

//	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/7000020a01">
"&.&.&.Ow&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
My eyes spring open as a violent pain pierces my cheek&.

This&.&.&. this is Glitter&.

Wasn't I in that club with the people getting high on 
lights&.&.&.?

When did I get back here?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G��", 105, -513, -115, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	CreateTextureSP("�G�w�i", 100, -513, -115, "cg/bg/m/bg302051_5_�O���b�^�[�G���g�����X_m.jpg");

	SetShade("�G��", MEDIUM);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal");
	FadeSt("C",0,true);
	Move("@StNameC/C*", 0, @0, @-40, null, true);

	Move("�G��", 1000, @0, @30, Dxl1, false);
	Move("@StNameC/C*", 1000, @0, @40, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
I slowly look around and soon find Mink staring down at 
me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	HAFade(2000, 0,true);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1200,null,false);

	CreatePlainSP("�G��", 990);

	Delete("�G��");
	DeleteAllSt(0,true);
	Delete("�G�w�i");

	CreateTextureSP("�G�w�i100", 100, -208, -473, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	Move("�G�w�i100", 500, @0, @-100, Dxl1, false);
	FadeDelete("�G��", 500, null, true);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/7000030a01">
"&.&.&.Ouch!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
A sharp headache hits me as I try to get myself up&. It 
feels as if I'm being pricked by needles&.

My cheek hurts from being hit&, and my body hurts all over&, 
but why&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʉ摜", 1050, Center, Middle, "cg/ev/ev315���t������.jpg");

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʉ摜", 1050, -121, -83, "cg/ev/l/ev316�~���N�w�ّO�Y_l.jpg");

	EfRecoIn2(500);

	Wait(500);

	EfRecoIn1(10000,200);

	CreateTextureSP("�G���ʉ摜", 1050, -801, -38, "cg/ev/l/ev316�~���N�w�ّ}��_l.jpg");

	EfRecoIn2(500);

	Wait(500);
	EfRecoOut1(100);

	Delete("�G����*");

	EfRecoIn2(800);


	Wait(500);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
&.&.&.&.&.

Was it a dream?

&.&.&.No&, it wasn't&.

At that club with Mink&, I&.&.&.

{	Fw("fw���t_�ʏ�_worry");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/7000040a01">
"&.&.&.&.&."

{
	Fw("fw�~���N_�ʏ�_serious");
}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm31/7000050a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
The memory is so unclear that it doesn't seem real&.&.&.

The fact that this heavy feeling of pain looms over me 
tells me it's not a dream&.

And I even&.&.&.
Said some terrible things back there&.&.&.

&.&.&.No&. I don't want to remember&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1000, 0, null);

	Move("�G�w�i100", 500, @0, @30, Dxl1, false);
	FadeDelete("�G�w�i100", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
A spur of shyness makes me want to forget everything&, and 
I bear with the pain in the upper half of my body as I get up&.

I timidly look at Mink's face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_serious");
	FadeSt("C",400,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
When our eyes meet&, I immediately turn mine away&.&.&. I 
feel uncomfortable&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	DeleteAllSt(200,true);

	CreatePlainSP("�G��", 5000);
	CreatePlainSP("�G��", 1000);
	CreateColorEX("�G�F��", 1500, "000000");
	Fade("�G�F��", 0, 300, null, true);

	CreateMaskSetSPTate("�G�}�X�N��", 2010);//�i�b�g���A�D��x
	CreateTextureSP("�G�}�X�N��/�G�摜", 2000, Center, Middle, "cg/bg/l/bg302051_5_�O���b�^�[�G���g�����X_l.jpg");
	CreateTextureSP("�G�}�X�N��/�G���G", 2005, Center, InBottom, "cg/fu/fu�~���N_�ʏ퐳��_serious.png");

	SetShade("�G��", MEDIUM);

	FadeDelete("�G��", 100, null, false);

	Move("�G�}�X�N��/�G�摜", 1000, @0, @20, Dxl1, false);
	Move("�G�}�X�N��/�G��*", 1000, @0, @40, Dxl1, false);
	OpenTateMask("�G�}�X�N��",200, 1300,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(1500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0046]
Is it just me&, or do I look at Mink with different eyes 
now&.&.&.?

&.&.&.In wonder?
Or suspicion?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Move("�G�}�X�N��/�G�摜", 1000, @0, @-20, Dxl1, false);
	Move("�G�}�X�N��/�G��*", 1000, @0, @-40, Dxl1, false);
	CloseTateMask("�G�}�X�N��",0,Dxl3,false);//�i�b�g���A���v���ԁA�e���|�A�҂�

	Delete("�G�F��");
	Delete("�G��");
	DeleteSt("C", 0,true);

	FadeDelete("�G��", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0048]
&.&.&.No way&. That can't be&.

He should scorn me&.
Because I've shown him how foolish someone can be&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se�l��_����_����06");
	MusicStart("SE01",0,700,0,800,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I silently stare at the floor&, and Mink just turns around 
and goes up the stairs without a word&.

{
	CreateSE("SE01","se����_�h�A��_���J��01");
	MusicStart("SE01",0,400,0,1000,null,false);
	Wait(1000);
}
I can hear the sound of him closing a bedroom door&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm31/7000060a01">
"&.&.&.Shit!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm3180.nss"]

}
