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


scene dm2390_vs.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	#ev920�m�C�Y�ːia=true;
	#ev239�E�l�}�V�[���m�C�Yvs���t=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm2400.nss";

}


scene dm2390_vs.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm011",0,450,true);//�d�]�o�g���c

	PrintBG("��w�i", 30000);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");

	OnBG(10,"bg304121_5_���]�^���[���]�̊�");
	FadeBG(0,true);

	CreateSE("SE01","se�[��_���__�E�o01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("��w�i");
	FadeDelete("�G�F��", 2000, null, true);

	Wait(500);

	CreateTextureEX("�G�w�i", 10, Center, Middle, "cg/bg/l/bg304121_5_���]�^���[���]�̊�_l.jpg");
	SetShade("�G�w�i", SEMIHEAVY);

//���r�d�F�ǂ����Ə��ɕG�������t
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i", 300, @0, -560, AxlDxl, false);
	Fade("�G�w�i", 300, 1000, Dxl3, true);
	Shake("�G�w�i", 200, 0, 8, 0, 0, 1000, null, true);

	Fw("fw���t_�ʏ�_pain2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/9000010a01">
"&.&.&.Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
When I return to reality&, I fall to my knees&, trying to 
endure the pain that attacks my entire body&.

My sweat slowly drips to the floor&.

In addition to the wound on my side&, I'm in even more
pain now&. Not to mention the damage I took from Noiz's 
merciless beating earlier&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwAM�@_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm23/9000020a06">
"Aoba&, be careful&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��17");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("�G�w�i", 600, @0, -288, Dxl3, false);
	Zoom("�G�w�i", 600, 800, 800, AxlDxl, false);
	Fade("�G�w�i", 600, 0, AxlDxl, true);
	Wait(200);

{	St("C",740, @0,@0,"st�m�C�Y_���ʐ��]_normal");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I look up and see Noiz standing there&, just like he was 
not long ago&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�퓬_����_����01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

//���r�d�F�m�C�Y�A�������Ƒ���o��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
Noiz lowers himself into a crouching posture&.
{	Wait(300);}
&.&.&.And dashes towards me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE02","se�퓬_����_������01");
	CreateTextureSP("�G�d�u", 1100, -270, -133, "cg/ev/m/ev920�m�C�Y�ːi_m.jpg");
	Zoom("�G�d�u", 0, 700, 700, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("�G�d�u", 300, 1000, 1000, Dxl3, false);
	FadeFFR3("�G�d�u", 0,1000, 300, 0, 0, 20,null, false);
	EffectZoomDXadd(1110, 200, 0, "FFFFFF", "cg/ef/ef�N���A���̉̐�.jpg", false);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/9000030a01">
"Uwhoa!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorEX("�G�F��", 5000, "FFFFFF");
	CreateTextureEXadd("�G���G�����M", 4000, Center, Middle, "cg/data/slide_07_00_0.png");

	CreateSE("SE00","se�퓬_�Ō�_���؂荂01");
	Move("�G�d�u", 200, -50, -360, Dxl3, false);
	Zoom("�G�d�u", 200, 1500, 1500, Dxl3, false);

	MusicStart("SE00",0,700,0,800,null,false);
	Fade("�G���G�����M", 0, 1000, null, true);
	DrawTransition("�G���G�����M", 100, 0, 1000, 100, Axl3, "cg/data/slide_04_00_1.png", false);
	Zoom("�G���G�����M", 300, 2000, 1000, Dxl3, false);
	Wait(150);
	Fade("�G�F��", 50, 1000, null, true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��04");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateSE("SE01a","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE0a1",0,700,0,1000,null,false);
	CreateTextureSP("�G�d�u", 1100, -1450, 0, "cg/ev/l/ev239�E�l�}�V�[���m�C�Yvs���t_l.jpg");
	Rotate("�G�d�u", 0, @0, 180, @0, null,true);
	Request("�G�d�u", Smoothing);
	Zoom("�G�d�u", 0, 1500, 1500, null, true);

	CreateTextureEXadd("�G���Ō��Ή�", 4000, 200, 50, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("�G���Ō��Ή�", 0, 2000, 2000, null, true);

	BezierMove("�G�d�u", 600, (-1450,0){-1350,0}{-1320,-20}(-1310,-60), Dxl2, false);

	Fade("�G���G�����M", 0, 0, null, true);
	Fade("�G�F��", 100, 0, null, false);

	Wait(90);

	CreatePlainEX("�G��", 5000);
	Zoom("�G��", 0, 1200, 1200, null, true);
	FadeFFR3("�G��", 0,500, 200, 0, 0, 60,null, false);
	Fade("�G��", 200, 0, null, false);

	Fade("�G���Ō��Ή�", 0, 1000, null, true);
	Shake("�G���Ō��Ή�", 400, 2, 4, 0, 0, 1000, null, false);
	Fade("�G���Ō��Ή�", 300, 0, Axl1, false);
	Zoom("�G���Ō��Ή�", 1000, 8000, 8000, Dxl3, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I block his right-fisted punch with both arms&.
The impact runs itself all the way to my bones&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 6000);

	CreateTextureEX("�G���G���U��", 1200, -165, -100, "cg/ev/m/ev920�m�C�Y�ːi_m.jpg");
	Request("�G���G���U��", Smoothing);
	Rotate("�G���G���U��", 0, @0, 180, -25, null,true);
	SetBlur("�G���G���U��", true, 3, 500, 90, false);


	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 0, 1000, null, true);
	DrawTransition("�G�F��", 1, 0, 500, 100, null, "cg/data/slide_07_00_0.png", true);

	CreateTextureEX("�G���G������", 1300, -175, -450, "cg/ev/l/ev239�E�l�}�V�[���m�C�Yvs���t_l.jpg");

	Fade("�G���G���U��", 0, 1000, Axl3, true);
	Delete("�G��");

	CreateSE("SE00","se�퓬_����_������01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Zoom("�G���G���U��", 300, 1200, 1200, null, false);
	Move("�G���G���U��", 300, -500, @0, Dxl3, false);

	Wait(250);

	EffectZoomDXadd(1210, 100, 0, "FFFFFF","cg/ef/ef�N���A���̉̐�.jpg", false);


	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,600,null,false);
	SetBlur("�G���G������", true, 3, 500, 60, false);
	Fade("�G���G������", 300, 1000, Dxl3, false);
	Move("�G���G������", 300, -510, -500, Dxl3, false);
	FadeDelete("�G�F��", 200, null, false);

	Wait(300);

	CreateSE("SE02","se�퓬_�Ō�_�q�b�g����01");
	MusicStart("SE02",0,700,0,800,null,false);
	FadeFFR3("�G���G������", 0,1000, 100, 0, 0, 20,null, true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
He continues to pummel me with his fists in rapid 
successions&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G���G��������", 1310, Center, Middle, "cg/ev/m/ev239�E�l�}�V�[���m�C�Yvs���t_m.jpg");
	Move("�G���G��������", 0, @100, @0, null, true);
	Move("�G���G��������", 10000, @-100, @0, null, false);
	Fade("�G���G��������", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/9000040a01">
"Noiz&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G���G�������O", 1310, Center, -160, "cg/ev/l/ev239�E�l�}�V�[���m�C�Yvs���t_l.jpg");
	Move("�G���G�������O", 0, @50, @0, null, true);
	Move("�G���G�������O", 10000, @-100, @0, null, false);
	Fade("�G���G�������O", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
As I guard&, I catch a glimpse of Noiz's face&.

I knew it&, his eyes&.&.&.

They didn't seem to be watching me&.
They were the eyes of a human who was manipulated by 
someone&.

Mizuki and Akushima were like that&, too&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");
	MusicStartSet("SE01",700,0,1000,null,false);
	CreateSE("SE01a","se�퓬_�Ō�_���؂荂01");
	MusicStartSet("SE01a",1000,0,1000,null,false);

	CreateColorEX("�G�F��", 5000, "FFFFFF");

	CreateTextureEX("�G���w�i", 100, -512, -260, "cg/bg/m/bg304122_5_���]�^���[���]�̊�_m.jpg");
	SetBlur("�G���w�i", true, 3, 500, 60, false);

	CreateSE("SE01b","se�l��_����_���02");
	MusicStartSet("SE01b",700,0,1000,null,false);

	CreateSE("SE02","se�[��_����_�Ή�01");
	MusicStart("SE02",0,400,0,1000,null,false);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);
	SetVolumeEX("SE02", 100, 0, null);

	CreateProcessEX("�v���Z�X", "LProc_dm2390_vs_01Act");
	Request("�v���Z�X", Start);

	FwPro("fw���t_�ʏ�_pinch",800,"fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/9000050a01">
"Guh!? Woah!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	if($LProc_dm2390_vs_01Act==true){
	}else{
	TextBoxDelete(0);
	WaitAction("@�v���Z�X", null);
	}
	Delete("�v���Z�X");

/*
	//CreateSE("SE01","�r�d�_�~�[");//�������u�r�d�Fse�퓬_�Ō�_���؂荂01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	CreateTextureSP("�G�d�u", 1100, Center, Middle, "cg/ev/ev920�m�C�Y�ːi.jpg");
	Zoom("�G�d�u", 0, 1080, 1080, null, true);
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);
	FadeFR2("�G�d�u",0,1000,200,0,0,30,null, true);
*/

	CreateSE("SE01","se��_�퓬_�퓬01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
Noiz's fist&, which had been targeting my face until now&, 
suddenly moves to attack my stomach area&.

I quickly pull myself back to avoid him but he still 
manages to graze my side&.

And I have a burn there&.
{	Wait(300);}
&.&.&.Is he doing it on purpose?

As if answering my question&, Noiz aims only at my side&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/9000060a01">
"Guuh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�d�u", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0039]
I have no idea if he can even recognize me&.
But&.&.&. he's being pretty damn serious about this&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm23/9000070a01">
"Noiz&, stop!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	DeleteFw();
	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateTextureEX("�G���G��", 1110, Center, Middle, "cg/ev/ev920�m�C�Y�ːi.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G���G��", 0, 1080, 1080, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,700,0,1500,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeFFR2("�G���G��", 0,1000, 150, 0, 0, 30,null, false);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text9999]
//�y�m�C�Y�z
<voice name="�m�C�Y" class="�m�C�Y" src="voice/dm23/9000080a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��01");
	CreateSE("SE02","se�퓬_����_������01");
	CreateTextureEX("�G���G��", 1110, Center, Middle, "cg/ev/ev239�E�l�}�V�[���m�C�Yvs���t.jpg");
	Request("�G�w�i", Smoothing);
	Zoom("�G���G��", 0, 1080, 1080, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	MusicStart("SE02",0,700,0,800,null,false);
	CreateColorSP("�G�F��", 4000, "FFFFFF");
	Wait(30);
	FadeFFR2("�G���G��", 0,1000, 150, 0, 0, 30,null, false);
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
Noiz's expression doesn't change&. He only keeps attacking  indifferently&, gazing at me&.

I'm forced into a one-sided defensive battle by his non-
stop mechanical movements&.

I don't want to fight Noiz when we're both like 
this&.&.&.! <k>I have to do something&.&.&.!

My arms begin to numb and I know for sure that I won't 
last&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�����t�@�C��["dm2400.nss"]

}

