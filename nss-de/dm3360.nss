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


scene dm3360.nss_MAIN
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
	$GameName = "dm3360sl.nss";

}


scene dm3360.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�������u���o�F�����̃~���N�͉������r�߂�悤�ɓo�ꂳ����A��]���v

	SoundPlay("@dm007a",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i", 100, Center, InBottom, "cg/bg/l/bg301041_5_�v���`�i�W�F�C���ʂ�H�n02_l.jpg");
	CreateTextureSP("�G���G", 500, Center, InBottom, "cg/st/l/st�~���N_�ʏ퐳��_normal_l.png");
	CreateStencil("�}�X�N�P",1000,Center,InBottom,128,"cg/st/l/st�~���N_�ʏ퐳��_normal_l.png",false);
	CreateColorEX("�}�X�N�P/�F�P", 500, 0, 0, 800, 600, "BLACK");
	CreateColorEXsub("�G�F��", 5000, 0, 0, 1024, 576, "WHITE");
	CreateColorEX("�G�F����", 101, 0, 0, 1024, 576, "BLACK");

	SetShade("�G�w�i", MEDIUM);

	Fade("�}�X�N�P/�F�P", 0, 1000, null, true);
	Fade("�G�F��", 0, 500, null, true);
	Fade("�G�F����", 0, 300, null, true);


	Fade("�G�F��", 1000, 500, null, false);
	FadeDelete("�}�X�N�P/�F�P", 2000, Axl1, false);
	FadeDelete("��w�i", 1000, null, true);
	Wait(2000);
	Delete("�}�X�N*");

	Move("�G���G", 4000, @0, @600, AxlDxl, false);
	Move("�G�w�i", 4000, @0, @300, AxlDxl, true);


	Wait(1000);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg301041_5_�v���`�i�W�F�C���ʂ�H�n02");
	FadeBG(0,true);

	St("C",740, @0,@0,"st�~���N_�ʏ퐳��_normal");
	FadeSt("C",0,true);

	FadeDelete("��w�i", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm33/6000010a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Standing there&, blocking my path&.&.&. was Mink&.

My heart drops as I accept that my plans had failed&. 

Mink must have known from the start&, probably&.

Knowing what I was thinking and how I would do it&, even&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEXmul("�G�F��", 5000, "000000");

	Fade("�G�F��", 1500, 700, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
&.&.&.I can't win&.

Those words weigh down my heart&.
I can't win against him&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�F��", 500, null, true);
	Wait(300);
	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_����01");
	MusicStart("SE01",0,800,0,700,null,false);

	Wait(2200);

	CreateSE("SE01","se�l��_����_���01");
	MusicStart("SE01",0,800,0,700,null,false);

//	St("C",740, @0,@0,"bu�~���N_�ʏ퐳��_normal");
//	FadeSt("C",0,true);

//	FadeDelete("�G�F��", 500, null, true);

//	CreateSE("SE02","se�l��_����_�ߎC��02");
//	MusicStart("SE02",0,700,0,1000,null,false);

	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE02",0,800,0,700,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 15, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0019]
Mink walked over in his usual manner and grabbed my bangs 
as I hung my head down in shame&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/6000020a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
My expression twists as the pain runs through my hair&.

{	CreateSE("SE01","se�l��_����_�ߎC��02");
	MusicStart("SE01",0,700,0,900,null,false);
	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 20, 0, 0, 500, null, true);
	Delete("�G��");}
He pulls my face up&, and my eyes can't escape his&.

{	St("C",740, @0,@0,"bu�~���N_�ʏ퐳��_normal");
	FadeSt("C",200,true);}
His chilling gaze shoots right through me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�~���N_�ʏ퐳��_angry2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm33/6000030a05">
"I thought you would do this&, you punk-ass&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
Mink pulls my hair up and lowers his face to mine without 
a word&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�~���N_�ʏ퐳��_serious");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0029]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm33/6000040a05">
"Don't think you can run from me&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
	SetVolumeEX("@dm*", 0, 200, null);

//�������u���o�F�~���N��峓ŁA�����o�v
	CreateMaskEX("�G��", 0, 0, 0, "cg/data/mosaic_01_00_0.png", false);
	CreatePlainEX("�G��/�G��", 5000);
	SetShade("�G��/�G��", SEMIHEAVY);

	CreateSE("SE01","se�l��_�S��_�ۓ�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("�G��/�G��", 0, 1000, null, true);
	Wait(30);
	FadeDelete("�G��/�G��", 1000, null, true);
	DrawDelete("�G��/�G��", 100, 100, null, "worm_01_00_0", true);

	SetVolumeEX("@dm*", 0, 450, null);
*/

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm33/6000050a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
What was that just now?

A small stimulus ran through my body like electricity&.

But not with fear or like a shiver&, something more&.&.&.

"Something" from a much deeper place&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm33/6000060a05">
"Come&. I'm going to beat you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 0, 10, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
As he says that&, he lets go of my hair and grabs my arm 
instead&.

My entire body goes pale&, and a numbness envelopes my 
hands and feet&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm3360sl.nss"]

}
