//<continuation number="200">
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


scene dm1410.nss_MAIN
{
$TEXTBOX_TYPE="�\�I";
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
	#ev142�c���g���Ǝh��=true;
	#ev142�c���g���Ǝh��a=true;

	#bg202021_3_�\�I�g�����Ə�����=true;

	//����q���o�Ɏg�p�����t���O��O�̂��߃��Z�b�g
	$MugenKairouProcFirst=false;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1420.nss";

	Request("@�b*", UnLock);
	Request("@�b/�G*", UnLock);

}


scene dm1410.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 19000);

	if($DM1390C==1&&$PreGameName == "dm1400.nss"){
	}else{
	CreateCamera("�b", 0, 0, 15000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G���w�i��", 0, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i��", 0, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i�E", 0, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	CreateTextureSP("�b/�G���w�i���ʉ�", -2500, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i���ʍ�", -2500, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i���ʉE", -2500, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");


	CreateTextureSP("�b/�G���w�i����ʉ�", -11250, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�����w�i.png");
	CreateTextureSP("�b/�G���w�i����ʍ�", -11250, 374, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q��.png");
	CreateTextureSP("�b/�G���w�i����ʉE", -11250, 514, 147, "cg/bg/bg202011_3_�\�I�g�����Ƌ��ԏ�q�E.png");

	Request("�b*", Lock);
	Request("�b/�G*", Lock);
	MoveCamera("�b", 0, @0, @0, 1000, AxlDxl, true);
	}

	Move("@�b/�G���w�i��", 0, 374, @0, DxlAuto, false);
	Move("@�b/�G���w�i�E", 0, 514, @0, DxlAuto, true);
	Move("@�b/�G���w�i���ʍ�", 0, 374, @0, DxlAuto, false);
	Move("@�b/�G���w�i���ʉE", 0, 514, @0, DxlAuto, true);
	MoveCamera("@�b", 0, @0, @0, 4000, AxlDxl, true);

	Wait(16);

	CreateTextureSP("@�b/�G���w�i������", -2000, Center, Middle, "cg/bg/bg202021_3_�\�I�g�����Ə�����.jpg");
	Zoom("@�b/�G���w�i������", 0, 750, 750, null, true);

	FadeDelete("��w�i", 0, null, true);

	WaitKey(32);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se����_�h�A��q_���J������01");
	MusicStart("SE01",0,1200,0,1000,null,false);

	Move("@�b/�G���w�i��", 500, @-200, @0, DxlAuto, false);
	Move("@�b/�G���w�i�E", 500, @200, @0, DxlAuto, true);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000010a01">
"Hah&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Request("@�b*", UnLock);
	Request("@�b/�G*", UnLock);

	PrintBG2("��w�i");
	OnBG(10,"bg202021_3_�\�I�g�����Ə�����");
	FadeBG(0,true);
	Delete("��w�i");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
I finally entered a room with a change of atmosphere&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorSP("�G����", 4000, "000000");
	DrawTransition("�G����", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/bg/bg202011_3_�\�I�g�����Ƌ���.jpg");

	DrawDelete("�G����", 150, 100, null, "slide_01_03_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
I quickly turn my head around to make sure the tattoo 
isn't still after me&.

Just a minute ago I was frantically trying to escape&, and 
then it just disappeared without a trace&.

At some point the door I went through locked and closed&.

Is it okay now&.&.&.?

I let out a small sigh&, and look around the room&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	FadeDelete("�G�w�i", 1000, null, true);

	CreateTextureEX("�G��", 1100, -1024, 0, "cg/ev/l/ev142�c���g���Ǝh��_l.jpg");
	Fade("�G��", 600, 1000, null, true);
	Wait(400);
	Move("�G��", 8000, -720, -336, DxlAuto, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0018]
The entire room is colored red&, and someone is lying face 
down on the futon&.

He seems to be wearing a lowered kimono&, with his back 
bare&. He looks frail and young&. A kid?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
The flickering candles illuminate a red onto his back&, and he appears to be shaking&.

&.&.&.That isn't because of the flames&.
That's&.&.&.

Not only is his back red&, but so is the futon he's lying 
on&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

/*
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
//���r�d����
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/1000020a02">
"Ughhnhkk&.&.&. Guhh&.&.&. ugh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);
*/

	CreateVOICE("�g��","dm14/1000020a02");
	MusicStart("�g��",0,700,0,1000,null,false);
	WaitKey(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
&.&.&.This voice&.

Then&, the person lying on this futon is&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);
	Move("�G��", 0, -380, -500, null, true);
	FadeDelete("�G��", 1000, null, true);

{	Fw("fw���t_�ʏ�_shock2");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0027]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000030a01">
"Koujaku?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F����邵���Ɣ��̑�����𔇂���
	CreateSE("SE01","se�[��_�h��_������01L");
	MusicStart("SE01",1000,700,0,1000,null,true);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000040a01">
"!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
When I come closer to the futon&, the bundle of black that I
thought had disappeared bursts out&.

{
	SetVolumeEX("SE01", 1400, 300, null);
}
I stand guard without thinking&. But it goes past my ankles&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE01", 1400, 700, null);
	Move("�G��", 0, -380, -500, null, true);
	Position("@�G��", $x1, $y1);
	CreateTextureEX("�G���", 1110, $x1, $y1, "cg/ev/l/ev142�c���g���Ǝh��a_l.jpg");
	FadeFFR("�G���", 0,3000, 2000, 0, 0, 30,DxlAuto, false);
	DrawTransition("�G���", 2000, 0, 1000, 200, null, "cg/data/worm_01_00_0.png", false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
It swarms around the face-down Koujaku&, and coils around 
him like a cocoon&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE01", 3000, 0, null);

	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0036]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000050a01">
"Koujaku!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0037]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/1000060a02">
"Guh&.&.&. Ughhh&.&.&. Ungh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F��q�ɂт�����ƌ�����ԉ�
	CreateSE("SE01","se�퓬_��_��01");
	CreateSE("SE02","se�퓬_����_�q�b�g04");
	MusicStart("SE01",0,1200,0,1000,null,false);
	MusicStart("SE02",0,800,0,1000,null,false);

	CreateTextureEXmul("�G����", 2100, Center, Middle, "cg/anime/Center/bloodA_6.png");
	Rotate("�G����", 0, @0, @0, @180, null,true);
	CreateTextureEX("�G���򖗓�", 2110, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("�G����", 0, 1050, 1050, null, true);
	Zoom("�G���򖗓�", 0, 1050, 1050, null, true);
	SetShade("�G����", MEDIUM);
	SetShade("�G���򖗓�", SEMIHEAVY);
	Request("�G����", Smoothing);
	Request("�G���򖗓�", Smoothing);
	FadeFFR("�G����", 0,1000, 150, 0, 0, 30,null, false);
	FadeFFR2("�G���򖗓�", 0,1000, 150, 0, 0, 30,null, true);
	Fade("�G���򖗓�", 0, 1000, null, true);

	CreateColorEX("�G�F��", 2090, "000000");
	Fade("�G�F��", 500, 1000, null, false);

{	Fw("fw���t_�ʏ�_pain");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0038]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000070a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fade("�G�F��", 0, 1000, null, true);

	CreatePlainSP("�G��", 5000);
	Delete("�G��*");
	Delete("�G�F��");
	Delete("�G����*");
	CreateMaskEX("�G��������q", 0, 0, 0, "cg/bg/x/bg202021_3_�\�I�g�����Ə�����_�}�X�N����q.png", false);
	CreateTextureSPover("�G��������q/�G������q", 11, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("�G��������q/�G������q", 0, 550, 500, null, true);
	SetShade("�G��������q/�G������q", SEMIHEAVY);
	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I can hear the sound of something like water splashing&.&.&. 
and suddenly blood scatters across the room&.

{
//���r�d�F�a��E�����l�X�̋����A�{���A�ǂ��ǂ��Ƒ���
	CreateSE("SE11","se��_�퓬_�g���ߋ�01L");
	MusicStart("SE11",4000,700,0,1000,null,true);
}
Across the door is a noisy&, rattling silhouette moving 
around&.

I hear a shriek and an angry roar&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�퓬_��_��01");
	CreateSE("SE02","se�퓬_����_�q�b�g04");
	MusicStart("SE01",0,300,0,1000,null,false);
	MusicStart("SE02",0,300,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	CreateTextureSPover("�G��������q/�G������q��", 12, Center, -50, "cg/anime/Left/blood_C_6.png");
	Zoom("�G��������q/�G������q��", 0, 550, 500, null, true);
	SetShade("�G��������q/�G������q��", SEMIHEAVY);
	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
Blood splashes around&, and it smears everywhere&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateSE("SE01","se�퓬_��_��01");
	CreateSE("SE02","se�퓬_����_�q�b�g04");
	MusicStart("SE01",0,300,0,1000,null,false);
	MusicStart("SE02",0,300,0,1000,null,false);

	CreatePlainSP("�G��", 5000);
	CreateTextureSPover("�G��������q/�G������q�O", 13, Center, -50, "cg/anime/Right/blood_B_8.png");
	Zoom("�G��������q/�G������q�O", 0, 550, 500, null, true);
	SetShade("�G��������q/�G������q�O", SEMIHEAVY);
	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
This&.&.&. What kind of memory is this?

What happened to Koujaku when he left the island?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE11", 5000, 300, null);
	CreateTextureEX("�G�����ʔw�i", 20, Center, Middle, "cg/bg/x/bg202021_3_�\�I�g�����Ə�����_���ʏ�q��.png");
	Fade("�G�����ʔw�i", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
I hear something moving about&, and the sliding door 
silently opens&.

From a crack&, I see the image of a lifeless woman&.

She's wearing an undershirt&, and standing still in front 
of the door&, absentminded&.

She becomes dyed red from head to toe&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
She wealky moves over to the black cocoon surrounding 
Koujaku on the futon&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�ǂ���
	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,1200,0,1000,null,false);

{	Fw("fw���t_�ʏ�_worry3");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000080a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
She falls to the tatami floor&, with her arms out&, as if 
trying to grab at something&.

Her small fingertips tremble&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y�g����z
<voice name="�g����" class="�g����" src="voice/dm14/1000090e03">
"&.&.&.u-ja&.&.&.ku&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0054]
&.&.&.!?

She was just saying Koujaku's&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
&.&.&.This woman&.
She's Koujaku's mother&.

I didn't notice because she looked so worn out&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G��", 1100, Center, Middle, "cg/ev/ev142�c���g���Ǝh��a.jpg");
	Fade("�G��", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/1000100a02">
"Unghhhh&.&.&. nguh&.&.&. Grgh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0063]
As if to respond to his mother&, I hear Koujaku moan from 
inside the cocoon&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreatePlainEX("�G��", 990);
	Zoom("�G��", 0, 1100, 1100, null, true);

	CreateSE("Proc_dm1410_01ActSE","se�l��_�Ռ�_�]�|02");
	MusicStartSet("Proc_dm1410_01ActSE",700,0,1000,null,false);

	CreateSE("Proc_dm1410_01ActSE02","se�l��_�S��_�ۓ�01");
	MusicStartSet("Proc_dm1410_01ActSE02",700,0,1000,null,false);

	$Proc_dm1410_01ActNut01 = "@�G��";
	CreateProcessEX("�v���Z�X", "Proc_dm1410_01Act");
	Request("�v���Z�X", Start);

	FwPro("fw���t_�ʏ�_worry4",1900,"fw���t_�ʏ�_pain");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000110a01">
"Koujaku&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Request("�v���Z�X", Stop);
	CreatePlainSP("�G��", 4900);
	Wait(16);
	Delete("@�G��");
	Delete($Proc_dm1410_01ActNut01);
	Delete("Proc_dm1410_01ActSE*");
	Delete("�v���Z�X");
	Delete("�G��");

	CreateSE("SEL01","se�[��_�h��_������01L");
	MusicStart("SE01",6000,400,0,1000,null,true);
	CreateSE("SEL02","se��_���R_��01L");
	MusicStart("SEL02",6000,200,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0065]
When I try to walk up to the cocoon&, a sharp pain runs 
through my back&. <k>My knees fall to the mat&.

What is this&.&.&.
My back hurts&.

It feels like it's being burned&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000120a01">
"Ah&.&.&. Guh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
The pain runs through my entire body and I begin to sweat&.

This pain&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�G��", 1100, Center, Middle, "cg/ev/ev142�c���g���Ǝh��a.jpg");
	Fade("�G��", 500, 1000, null, true);

//���g�����Q�Ă������܂݂�̕z�c���I�[�o�[���b�v
	CreateTextureEX("�G�d�u", 1110, -373, -458, "cg/ev/l/ev142�c���g���Ǝh��_l.jpg");

	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N03");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("�G�d�u", 0, 1000, null, true);
	FadeFR2("�G�d�u",0,1000,150,0,0,50,null,true);
	Fade("�G�d�u", 0, 0, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0078]
The pain Koujaku felt when he was getting his tattoo&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0079]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/1000130a02">
"Ah&, ahhh&.&.&. Kuh&.&.&. Ugh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
I can hear Koujaku&.

&.&.&.I need to go&.

I need to go to him&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_pinch");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000140a01">
"Ungh&.&.&. &.&.&.Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE21","se�l��_����_��������01");
	MusicStart("SE21",0,1100,0,1500,null,false);
	CreateSE("SE22","se�퓬_����_�q�b�g03");
	MusicStart("SE22",0,700,0,900,null,false);
	FadeDelete("�G��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0083]
I stand up to the pain in my back and stumble to my feet&.

I get closer to the cocoon&, and I tear at it with both 
hands&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_pain2",3000,"fw���t_�ʏ�_hard2");
//	Fw("fw���t_�ʏ�_rage");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000150a01">
"Ouch&.&.&. Damn&.&.&. it!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0085]
The sharp&, black cocoon scatters and burns away like paper&.

As I destroy the rest of the the cocoon&, I can soon see 
Koujaku's back&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000160a01">
"Koujaku&.&.&. wake up!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0091]
I reach my hand out to the bloodied back lying in front of me&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_��_�����02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�퓬_����_�q�b�g04");
	MusicStart("SE02",0,700,0,750,null,false);
	CreateColorSP("�G�F��", 4000, "CC0000");
	Wait(30);
	FadeDelete("�G�F��", 70, null, true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000170a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateStencil("�}�X�N�P",0,center,InBottom,128,"cg/bu/bu����_�ʏ�_mad.png",false);
	SetShade("�}�X�N�P", HEAVY);
	Move("�}�X�N�P", 0, @0, @40, null, true);
	SetVertex("�}�X�N�P", center, bottom);
	Zoom("�}�X�N�P", 0, 0, 0, null, true);
	CreateColor("�}�X�N�P/�F�P", 750, 0, 0, 1024, 576, "720000");
	CreateColorEX("�}�X�N�P/�F�P", 750, "720000");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
When my fingertips touch him&, the blood covering his back 
peels off like a jelly&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�[��_�h��_������01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	Fade("�}�X�N�P/�F�P", 1000, 1000, null, false);
	Zoom("�}�X�N�P", 1000, 300, 2000, AxlDxl, true);
	Zoom("�}�X�N�P", 2000, 1000, 1000, Dxl1, true);
	SetVolumeEX("SE01", 300, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0094]
The clot of blood grows to the size of a person&. 

I recognize the familiar shape&.

&.&.&.Ryuuhou&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	Position("�}�X�N�P", $x1, $y1);
	CreateTextureEXmul("�G���������", 750, $x1, $y1, "cg/bu/x/bu����_�ʏ�_mad_�����̂�.png");
	DrawEffect("�G���������", 0, "Ripple", 80, 80, null);
	Fade("�G���������", 0, 200, null, true);
	DrawTransition("�G���������", 10000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0096]
I can see the twisted smile on his foxlike face&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0100]
This tattoo&. This back&.

This spirit&.

Just like he said&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_hard");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0103]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000180a01">
"&.&.&.No&. Koujaku isn't something you own&.&.&."

{	Fw("fw���t_�ʏ�_rage");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000190a01">
"Let go of Koujaku&. Release&.&.&. Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateSE("SE02","se�퓬_��_������01");
	MusicStart("SE02",0,700,0,750,null,false);
	CreateColorSP("�G�F��", 4000, "CC0000");
	Wait(30);
	Delete("�}�X�N*");
	Delete("�G������*");
	FadeDelete("�G�F��", 70, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0105]
I deliver a blow to the clot of blood that looks like 
Ryuuhou&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���r�d�F�΂����ƌ��̉򂪕����

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0110]
It bursts open and a sea of blood scatters out&.

I pay it no mind and move back to Koujaku&, trying to wake 
him up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateTextureEX("�G��", 1100, -373, -458, "cg/ev/l/ev142�c���g���Ǝh��a_l.jpg");
	Fade("�G��", 500, 1000, null, true);

	FwPro("fw���t_�ʏ�_rage",1800,"fw���t_�ʏ�_shock2");
//	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0120]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/1000200a01">
"Koujaku&.&.&.!!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�����t�@�C��["dm1420.nss"]

}
