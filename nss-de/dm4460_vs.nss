//<continuation number="370">
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


scene dm4460_vs.nss_MAIN
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

	//�����o������������
	TiesMovieDelete();

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm4470scr.nss";

	//�����Ƀ��x���ݒ�
	$HALevel=4;

}


scene dm4460_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm008",0,450,true);

	PrintBG("��w�i", 30000);

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
{
	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);
}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/6000010b02">
"&.&.&.Hey&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);
	St("C",700, @0,@0,"st�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Toue looks to ���Q while watching �� and Clear fight&.

���Q turns his head towards me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000020a01">
"!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	DeleteFw();

	CreateSE("SE02","se�l��_����_�͂�01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 200, 15, 0, 0, 0, 500, null, true);
	Delete("�G��");

	St("C",700, @0,@0,"bu�N���A��2_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I try to dash forward and escape&, but someone grabs my arm&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000030a01">
"Let go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_serious2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000040a04">
"Aoba-san!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��01");
	MusicStart("SE01",0,500,0,1100,null,false);

	CreateSE("SE02","se�l��_����_�i�߂�01");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 1000, 0, null);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 150, 20, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
&.&.&.Shit&.

���Q holds onto my arm with a solid grip&.
It's like he's made out of metal&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteSt("C", 180,true);

	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",180,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/6000050b02">
"Clear's attention is focused on you&, but I'd like to
 understand something&. Aoba-kun&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal2");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/6000060b02">
"I've heard that your voice has a power to it&, but I
 haven't heard anything much besides that&, only because
 it's taken you so long to notice it yourself&."

{	St("C",740, @0,@0,"st���]_�ʏ�_normal");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/6000070b02">
"So please&, let me examine you further&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000080a01">
"This isn't funny&.&.&.!"

{	St("C",740, @0,@0,"st���]_�ʏ�_think");
	FadeSt("C",200,true);}
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/6000090b02">
"Show Aoba-kun to a different room&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se�l��_����_�͂�01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 990);
	Shake("�G��", 400, 5, 0, 0, 0, 500, null, true);
	Delete("�G��");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
���Q pulls my arms and starts to walk&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000100a01">
"Stop&, let me go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	OnBG(10,"bg304122_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304122_5_���]�^���[���]�̊�.jpg");

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_angry");
	FadeSt("C",0,true);

	FadeDelete("�G��", 200, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0111]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000110a04">
"Let go of Aoba-san!!"

{	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_sigh");}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/6000120b18">
"Where do you think you're looking?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���N���A�����N���A������
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl3, true);

	DeleteSt("C", 50,true);

	Shake("�G�w�i", 200, 15, 15, 0, 0, 1000, Dxl1, false);
	FadeDelete("�G�F��", 50, Dxl3, true);

	Wait(200);


	CreateSE("SE01","se�l��_�Ռ�_�]�|02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000130a04">
"Guh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0130]
�� punches Clear in the face&.

Clear is beaten and tattered&, but is somehow still able to stand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);

	CreateTextureSP("�G���o�w�i��", 100, Center, Middle, "cg/bg/m/bg304121_5_���]�^���[���]�̊�_m.jpg");
	CreateTextureSP("�G���o�w�i", 1000, 0, 0, "cg/ef/efbg����91.jpg");
	CreateTextureEX("�G���o���G", 1501, 0, 0, "cg/fu/x/fu�N���A��_�}�X�N�Ȃ�_normal_x01.png");
	CreateTextureEX("�G���o���G��", 800, Center, 0, "cg/st/m/st�N���A��_�ʏ�}�X�N�Ȃ�_pride_m.png");
	CreateTextureEXmul("�G����", 2001, Center, Middle, "cg/ef/efbg����01.jpg");

	CreateColorEX("�G����", 5000, "WHITE");
	Fade("�G�w�i", 1000, 1000, null, true);

	SetBlur("�G���o���G", true, 2, 300, 200, false);
	Move("�G���o���G", 0, @-900, @-100, null, true);
	Move("�G���o���G��", 0, @50, @-100, null, true);
	Move("�G���o�w�i��", 0, @-200, @-50, null, true);

	Zoom("�G���o�w�i", 0, 1500, 1000, null, true);
	Move("�G���o�w�i", 0, @500, @0, null, true);

	Move("�G���o�w�i", 4600, @-4500, @0, null, false);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G���o���G", 1000, 100, @0, null, false);
	FadeDelete("�G��", 200, null, true);
	StepStep_ara("�v���N���A","�G���o���G");
	FadeDelete("�G���o���G", 1000, null, true);

	Wait(1000);

//�e�F���ɍ��킹�ĉ�ʃV�F�C�N�ƌ�
	CreateSE("SE01","se�퓬_�Ō�_�q�b�g����02");
	MusicStart("SE01",0,700,0,1100,null,false);

	//200
	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 100, 0, 1000, 100, Axl1, "cg/data/circle_11_00_0.png", true);
	Wait(50);
	Fade("�G����", 100, 0, Dxl3, true);
	//450

	Wait(100);

	//550
	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 50, 0, 1000, 100, Axl1, "cg/data/circle_07_00_0.png", true);
	Wait(10);
	Fade("�G����", 50, 0, Dxl3, true);
	//660
	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 50, 0, 1000, 100, Axl1, "cg/data/circle_01_00_0.png", true);
	Wait(10);
	Fade("�G����", 50, 0, Dxl3, true);
	//770

	Wait(50);

	//820
	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 50, 0, 1000, 100, Axl1, "cg/data/circle_08_00_0.png", true);
	Wait(10);
	Fade("�G����", 50, 0, Dxl3, true);
	//930

	Wait(100);

	//1030
	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 50, 0, 1000, 100, Axl1, "cg/data/circle_10_00_0.png", true);
	Wait(10);
	Fade("�G����", 50, 0, Dxl3, true);
	//1140

	Wait(100);

	//1240
	Fade("�G����", 0, 1000, null, true);
	DrawTransition("�G����", 50, 0, 1000, 100, Axl1, "cg/data/circle_12_00_0.png", true);
	Wait(10);
	Fade("�G����", 50, 0, Dxl3, true);
	//1350

	SetVolumeEX("SE*", 200, 0, null);
	Wait(300);

	Fade("�G���o���G��", 500, 1000, null, false);
	Move("�G���o���G*", 2000, @30, @0, Dxl1, false);

	Wait(500);

	FadeDelete("�G���o���G", 500, null, false);
	FadeDelete("�G���o�w�i", 500, null, false);
	Move("�G���o�w�i��", 2000, @-15, @0, Dxl1, false);
	Move("�G���o���G*", 2000, @-30, @0, Dxl1, false);

	Wait(1000);

	CreateColorEXadd("�G�F��", 15000, "WHITE");
	Fade("�G�F��", 200, 1000, Dxl1, true);

	DeleteSt("C", 0,true);
	Delete("�G��*");
	Delete("�G���o*");
	Delete("�v��*");
	Delete("�G��*");
	Delete("�G�w�i");

	FadeDelete("�G�F��", 300, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0131]
�� laughs and circles Clear&, attacking him as he goes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl1, true);
	FadeDelete("�G�F��", 100, Dxl1, true);

	CreateTextureEX("�G�w�i100", 100, -256, -144, "cg/bg/m/bg304122_5_���]�^���[���]�̊�_m.jpg");
	Move("�G�w�i100", 300, -86, -272, Dxl1, false);
	Fade("�G�w�i100", 300, 1000, null, true);

	CreateSE("SE02","se�l��_�Ռ�_�]�|02");
	MusicStart("SE02",0,700,0,1000,null,false);

	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0140]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000140a04">
"Urgh&.&.&."

{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000150a01">
"Clear!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateTextureEX("�G���o", 1000, Center, Middle, "cg/ef/efx03����02.jpg");
	Request("�G���o", Smoothing);
	Zoom("�G���o", 0, 1300, 1300, null, true);

	CreateSE("SE01","se�퓬_��_�����02");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeFR("�G���o",300,800,300,5,-10,50,Dxl1, true)

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0150]
�� kicks him in the stomach&, and Clear falls to his knees&. Red blood drips from his mouth and parts of his skin are 
scattered about on the floor&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0160]
A smell rises to my nose&.

It doesn't smell like blood&. Is it oil&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	Delete("�G�w�i100");
	Delete("�G���o");
	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	St("C",700, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_normal");
	FadeSt("C",0,true);

	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0170]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/6000160b18">
"Well&, let's end this&. I'll make sure to finish you off&."

{	Fw("fw�N���A_���ʃ}�X�N�Ȃ�_pinch");}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000170a04">
"&.&.&.&.&."

{	St("C",700, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pride");
	FadeSt("C",200,true);}
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/6000180b18">
"This time&, it's bye-bye for real&. Okay&, brother?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteSt("C", 0,true);
	Delete("�G�w�i");

	FadeDelete("�G��", 500, null, true);

	Wait(100);

	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",300,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0180]
With an expression not unlike that of a predator cruelly 
tormenting his prey&, �� stands in front of Clear&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�e�F�ʒu�v������������

	CreateWindowEX("�G��", 0, 0, 1024, 350, false);
	CreateTextureEX("�G��/�G���G", 1000, Center, -175, "cg/fu/fu�N���A_���ʃ}�X�N�Ȃ�_pride.png");

	CreatePlainSP("�G��", 5000);
	CreatePlainEX("�G��", 800);
	CreateTextureSP("�G����g", 1100, 0, -177, "cg/mask/ci���C��_00_00z.png");
	CreateTextureSP("�G�����g", 1100, 0, 63, "cg/mask/ci���C��_00_00z.png");
	CreateColorEX("�G�F����", 801, "000000");

	DrawTransition("�G��/�G*", 0, 0, 520, 0, Dxl1, "cg/data/slide_05_00_1.png", true);

	SetShade("�G��", SEMIHEAVY);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0181]
Clear glares at him silently&.&.&.<k><?>

{
	DeleteAllSt(200,false);
	SetVolumeEX("@dm*", 1000, 0, null);
	Fade("�G��/�G���G", 0, 1000, null, true);
	Fade("�G�F����", 300, 500, null, false);
	Fade("�G��", 300, 1000, null, false);
	Move("�G��/�G���G", 300, @0, -204, Dxl1, false);
	DrawDelete("�G��", 300, 200, Dxl3, "slide_05_01_0", true);

	FadeDelete("�G�F����", 250, null, false);
	CreatePlainSP("�G��", 5000);
	Delete("�G��/�G*");
	Delete("�G��*");
	Delete("�G��*");
	DrawDelete("�G��", 250, 100, Dxl1, "slide_05_01_1", true);
}
and a smile widens on his   face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_pride");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0190]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/6000190b18">
"What&, are you completely broken now?"

{	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000200a04">
"&.&.&.I was a failed work&, so I can do something that you'd
 never expect&."

{	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_think");
	FadeSt("C",200,true);}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000210a04">
"So I have no reason to be afraid anymore&. You can't
 understand anything beyond your calculations&."

{
	St("C",740, @0,@0,"st�N���A_���ʃ}�X�N�Ȃ�_smile");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000220a04">
"And I&.&.&. can do anything I want without someone's
 instruction&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreateSE("SE01","se�l��_����_�ߎC��03");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteSt("C", 200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0200]
Clear puts his hand in his coat pocket and takes something out&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateMaskSetSPTate("�G��", 2010);//�i�b�g���A�D��x

	CreateStencil("�G��/�G�n",1002,center,Middle,128,"cg/ef/ef�N���A�i�C�t.png",false);
	CreateColorSP("�G��/�G�n/�G�F��", 1001, "BLACK");
	CreateTextureSP("�G��/�G�V�F�[�h�p", 500, -300, InBottom, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");
	Move("�G��/�G�n", 0, @0, @-71, Dxl1, true);

	SetVolumeEX("SE*", 0, 0, null);

	SetShade("�G��/�G�V�F�[�h�p", MEDIUM);

	FadeDelete("�G��", 100, null, false);

	Move("�G��/�G�n", 500, @0, @-50, Dxl1, false);
	OpenTateMask("�G��",200, 1100,Dxl3,true);//���v���ԁA�����{���A�e���|�A�҂�

	Wait(500);

	Rotate("�G��/�G�n", 500, @0, @0, @90, null,false);
	Move("�G��/�G�n", 500, @80, @-410, Dxl1, false);

	Wait(200);

	CloseTateMask("�G��",300,Dxl3,true);//�i�b�g���A���v���ԁA�e���|�A�҂�

	CreateSE("SE01","se�퓬_����_�i�C�t�\����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEX("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl3, true);
	Wait(10);
	Delete("�G��*");
	FadeDelete("�G�F��", 100, Dxl3, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0205]
Is that&.&.&. a knife!?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A��_�ʏ�}�X�N�Ȃ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0210]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/6000230b18">
"&.&.&.What are you up to?"

{
	St("C",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_smile");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000240a04">
"Something that you couldn't even dream of doing&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G��", 100, Center, Middle, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");

	St("L",740, @0,@0,"fu�N���A_���ʃ}�X�N�Ȃ�_smile");
	FadeSt("L",0,true);

	SetShade("�G��", MEDIUM);

	Move("@StNameL/L*", 0, -170, @0, null, true);
	Move("�G��", 0, @-30, @0, null, true);

	Move("@StNameL/L*", 1000, -195, @0, Dxl1, false);
	Move("�G��", 1000, @-10, @0, Dxl1, false);
	FadeDelete("�G��", 500, null, true);
//	DrawDelete("�G��", 500, 100, null, "beam_01_00_1", true);

	Wait(500);
	CreateSE("SE01","se�퓬_�e_�\����02");
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl3, true);

//	CreatePlainSP("�G��", 3000);

	CreateMaskSetSP("�G���E", 2000, 0, 0, "ci�X���b�V��_05_01", true, "ci�X���b�V��_05_00z");
	CreateTextureSP("�G���E/�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Move("�G���E/�G�w�i", 0, @384, @0, null, true);

	St("R",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_shock");
	FadeSt("R",0,true);

//	FadeDelete("�G�F��", 100, Dxl3, true);
//	Wait(500);

	DrawDelete("�G�F��", 200, 100, Dxl1, "circle_09_00_1", true);

	Wait(500);
*/

	CreatePlainSP("�G��", 5000);

	CreateTextureSP("�G��", 100, -260, -100, "cg/bg/m/bg304122_5_���]�^���[���]�̊�_m.jpg");

	St("ML",740, @0,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_smile");
	FadeSt("ML",0,true);

	SetShade("�G��", MEDIUM);

	DeleteSt("C", 0,true);

	Move("@StNameML/ML*", 800, @-85, @0, Dxl1, false);
	Move("�G��", 800, -323, -100, Dxl1, false);

	FadeDelete("�G��", 500, null, true);

	Wait(500);
	CreateSE("SE01","se�퓬_�e_�\����02");
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateColorEXadd("�G�F��", 5000, "WHITE");
	Fade("�G�F��", 100, 1000, Dxl3, true);

	CreateMaskSetSP("�G���E", 2000, 0, 0, "ci�X���b�V��_05_01", true, "ci�X���b�V��_05_00z");
	CreateTextureSP("�G���E/�G�w�i", 100, Center, Middle, "cg/bg/bg304121_5_���]�^���[���]�̊�.jpg");
	Move("�G���E/�G�w�i", 0, 245, 0, null, true);

	St("R",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_shock");
	FadeSt("R",0,true);

	DrawDelete("�G�F��", 200, 100, Dxl1, "circle_09_00_1", true);

	Wait(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0220]
A fearless grin floats to his face&, and he points the 
knife's tip to his own head and holds it there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0221]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000241a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0222]
What is he trying to do&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���]_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0230]
//�y���]�z
<voice name="���]" class="���]" src="voice/dm44/6000250b02">
"&.&.&.Oh?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0240]
Toue's voice holds a tint of wonder in it&, and I free one 
of my hands from ���Q's grip&.

���Q&, who was taking me along&, stops moving&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("ML",740, @-85,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious2");
	FadeSt("ML",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0250]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000260a04">
"I'm certain that the key lock circut is around here&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("R",740, @0,@0,"st�N���A��_�ʏ�}�X�N�Ȃ�_pinch");
	FadeSt("R",200,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0260]
//�y�N���A���z
<voice name="�N���A��" class="�A���t�@" src="voice/dm44/6000270b18">
"! No way&.&.&. I can't believe you'd do something so stupid&.
 I don't understand you&."

{	St("ML",740, @-85,@0,"bu�N���A_���ʃ}�X�N�Ȃ�_serious");
	FadeSt("ML",200,true);}

//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000280a04">
"It's fine if you don't&. You don't need to&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

/*
	CreatePlainSP("�G��", 8000);

//	DeleteSt("C", 0,true);
	DeleteSt("ML", 0,true);

	Delete("�G��/�G*");
	Delete("�G��*");
	Delete("�G��");

	CreateTextureSP("�G��", 1000, Center, Middle, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");
	CreateTextureSP("�G���G��", 2005, -450, Middle, "cg/fu/x/fu�N���A_�ʏ�}�X�N�Ȃ�_worry_x01.png");
	CreateTextureSP("�G���G���", 2004, -450, Middle, "cg/fu/x/fu�N���A_�ʏ�}�X�N�Ȃ�_worry2_x01.png");

	Request("�G��", Smoothing);
	Zoom("�G��", 0, 1300, 1300, null, true);
	SetShade("�G��", SEMIHEAVY);

	Move("�G���G��*", 1500, @-50, @0, Dxl1, false);
	Move("�G��", 1500, @-30, @0, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

	Wait(500);
*/

	CreatePlainSP("�G��", 8000);

	DeleteAllSt(0,true);
	Delete("�G��/�G*");
	Delete("�G��*");
	Delete("�G��");

	CreateTextureSP("�G��", 500, -235, -0, "cg/bg/l/bg304122_5_���]�^���[���]�̊�_l.jpg");
	Request("�G��", Smoothing);
	SetShade("�G��", SEMIHEAVY);

	FadeDelete("�G��", 500, null, true);

	St("C",740, @15,@0,"fu�N���A_�ʏ�}�X�N�Ȃ�_worry");
	Move("@StNameC/C*", 300, @-15, @0, Dxl1, false);
	FadeSt("C",300,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0261]
Clear takes a sidelong glance to me&.

I can see a tender sadness in his eyes&, mixed with 
different colors&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ�_worry2");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0270]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000290a04">
"Aoba-san&. I will keep my promise&. I will definitely
 protect you&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000300a01">
"Stop&, Clear&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ�_smile");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0280]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000310a04">
"It'll be fine&. Please believe in me&."

{	Fw("fw���t_�ʏ�_shout2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000320a01">
"That's not what I mean!"

{

	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ�_serious");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000330a04">
"I will protect you&, not because I'm ordered to&, but
 because I choose to&, as the first thing I'll do using my
 own free will&."

{
	St("C",740, @0,@0,"fu�N���A_�ʏ�}�X�N�Ȃ�_smile");
	FadeSt("C",200,true);
}
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm44/6000340a04">
"So please&, let me protect you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0290]
A fleeting smile flashes by his face while holding the 
knife in his hand&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	DeleteAllSt(0,true);
	Delete("�G��*");
	Delete("�G��");

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G��", 300, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0295]
Without hesitation&, his hand&.&.&. swings to the side&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�͍s�g_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0300]
//���͔���
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000350a01">
"Clear!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0310]
I scream with all I have to try to stop Clear&.

I look at him with desperate&, pained eyes&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ƀ��x���F�R
$HALevel=3;
//���ǂ���A�Ɠ���
//���ɃG�t�F�N�g(0)

	SetVolumeEX("@dm*", 0, 0, null);

	HAFade(2000, 0,false);

	CreateColorEX("�G�F��2", 1000, "000000");
	Fade("�G�F��2", 1000, 300, null, false);

	Fw("fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0311]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm44/6000360a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����Ƀ��x���F�S
$HALevel=4;

//���ǂ���A�ǂ���Ɠ���
//���ɃG�t�F�N�g(0)
//���ɃG�t�F�N�g(0)

//�����Ƀ��x���F�S
//���ǂ���A�Ɠ���
//���ɃG�t�F�N�g(0)

	HAFade(2000, 0,false);

	Fade("�G�F��2", 1500, 1000, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0312]
My head hurts&.
It feels like it's ripping apart&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������t�̌��e

/*
	CreateTextureEX("�G�d�u", 50, Center, Middle, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	CreateColorSP("�G�����B", 60, "000000");
	DrawTransition("�G�����B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("�G�d�u", 0, 1000, null, true);

	CreateSE("SE01","se�[��_����_�h��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�F��", 100, 0, Dxl2, true);
	Wait(200);
	Fade("�G�F��", 100, 1000, Dxl2, true);

	Wait(500);

	CreateSE("SCRAPINSE01","se�l��_�S��_�ۓ�02L");
	MusicStart("SCRAPINSE01",3000,700,0,1000,null,true);
*/

	CreateColorEX("�G�F��", 12000, "000000");
	Fade("�G�F��", 300, 1000, null, true);

	Delete("�G�F��2");

	CreateColorSP("�G�F��2", 1099, "000000");

	TemptationNoizSet("�G�������t�U�f������",1102);
	TemptationAobaSet("�G�������t�U�f",1100,Center,45,"cg/ev/l/ev900�����P�l�̑��t_l.jpg",2000,2000);

	CreateColorEX("�G�������t�U�f���B", 1110, "000000");
	DrawTransition("�G�������t�U�f���B", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	$HALevel=0;
	Fade("�G�������t�U�f���B", 0, 1000, null, true);
	Fade("�G�������t�U�f", 0, 1000, null, true);
	TemptationNoizFade("�G�������t�U�f������",0,null,true);
	Position("@�G�������t�U�f", $TANx1, $TANy1);
	$HALevel=4;

	CreateSE("SE01","se�l��_����_�ɂ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("�G�F��");
	TemptationAobaOut(200,true);
	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0320]
This sensation&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SCRAPINSE01","se�l��_�S��_�ۓ�02L");
	MusicStart("SCRAPINSE01",3000,700,0,1000,null,true);

	SetVolumeEX("SCRAPINSE01", 200, 200, null);
	EfRecoIn1(10000,200);

	Delete("�G��*");
	Delete("�G�F��*");

	CreateTextureSP("�G���ʔw�i", 100, Center, Middle, "cg/bg/bg104021_5_���t��䏊.jpg");

	St("C",740, @0,@0,"st�^�G_�ʏ�_normal");
	FadeSt("C",0,true);

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0330]
//����z
//�y�^�G�z
<voice name="�^�G" class="�^�G" src="voice/dm44/6000370b03">
"If you're doing it to someone you know well&, and have a
 deep wish or desire&, you will most likely be able to plant
 that into their consciousness with your own&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SCRAPINSE01", 2000, 700, null);
	EfRecoOut1(100);

	Delete("�G�d�u*");
	Delete("�G����*");
	DeleteSt("C", 0,true);

	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0340]
Then&, maybe I can&.&.&.

Scrap&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	ScrapIn("�]���\�Ia",2000);
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();
	Wait(2000);

//�����t�@�C��["dm4470scr.nss"]

}
