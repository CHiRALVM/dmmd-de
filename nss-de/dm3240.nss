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


scene dm3240.nss_MAIN
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
	$GameName = "dm3250_vs.nss";

}


scene dm3240.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm009",0,450,true);

	PrintBG("��w�i", 30000);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg306021_5_�q�ɓ����������.jpg");
	CreateWindowEX("�G��", 0, 0, 1024, 576, false);
	CreateColorSPadd("�G��/�G����", 200, "WHITE");
	DrawTransition("�G��/�G����", 0, 0, 200, 1000, null, "cg/data/effect_01_00_0.png", true);

	Request("�G�w�i*", Smoothing);
	Zoom("�G�w�i*", 0, 2000, 2000, null, true);
	SetShade("�G�w�i*", MEDIUM);

	St("C",740, @0,@0,"bu�~���N_�ʏ�_angry2");
	FadeSt("C",0,true);

//===========================================
//�ȉ��A����
//===========================================

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{	FadeDelete("��w�i", 0, null, true);
	DeleteFw();}
I understood what Mink meant by that&.

The other way&.&.&.

The power of my voice&.&.&. Scrap&.

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/4000010a05">
"Use it&."


{
	CreateSE("SE03","se����_���K�z��_���Ƃ�");
	MusicStart("SE03",0,600,0,1100,null,false);
	SetVolumeEX("SE03", 500, 0, null);
	CreateSE("SE02","se����_��_��01");
	MusicStart("SE02",0,400,0,1000,null,false);
}
Mink puts down the other submachine gun and puts something in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DrawTransition("�G��/�G����", 500, 180, 160, 1000, null, "cg/data/effect_01_00_0.png", true);

	FwPro("fw���t_�ʏ�_worry4",1850,"fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/4000020a01">
"A megaphone? &.&.&.Is this Akushima's?"

{	St("C",740, @0,@0,"bu�~���N_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y�~���N�z
<voice name="�~���N" class="�~���N" src="voice/dm32/4000030a05">
"I have an idea&. Don't fuck up the timing&."

{	Fw("fw���t_�ʏ�_shock2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm32/4000040a01">
"Huh?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteSt("C", 200,true);

	CreateSE("SE01","se�l��_����_����03");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE01", 2000, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
As he said that&, Mink dashed out from behind the box&.

Without an idea in my head&, my eyes followed Mink's figure&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 16000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	ClearFadeAll(0, true);

//�����t�@�C��["dm3250_vs.nss"]

}
