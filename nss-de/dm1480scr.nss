//<continuation number="410">
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


scene dm1480scr.nss_MAIN
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
	#�C�x���g�t�@�C����=true;

	#bg503011_1_�g������g������=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1490.nss";

}


scene dm1480scr.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	//OnBG(10,"bg202021_3_�\�I�g�����Ə�����");
	//FadeBG(0,true);
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintBG("��w�i", 30000);

	OnBG(10,"bg304091_5_���]�^���[���z�[��");
	FadeBG(0,true);
	St("C",740, @0,@0,"fu�g��_�ʏ�_sad");
	FadeSt("C",0,true);

	Delete("��w�i");



	CreateSE("SE01","se�[��_���__�Ђ�01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 5000, "FFFFFF");
	Wait(30);
	FadeDelete("�G�F��", 1000, null, true);



	CreatePlainSP("�G��", 10000);

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G�ʏ�w�i", 0, Center, Middle, "cg/bg/l/bg202021_3_�\�I�g�����Ə�����_l.jpg");
	Request("�b/�G�ʏ�w�i", Smoothing);
	Zoom("�b/�G�ʏ�w�i", 0, 500, 500, null, true);

	CreateMaskEX("�b/�G��������q", 0, 0, 0, "cg/bg/x/bg202021_3_�\�I�g�����Ə�����_�}�X�N����q.png", false);
	CreateTextureSPover("�b/�G��������q/�G������q", 11, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("�b/�G��������q/�G������q", 0, 550, 500, null, true);
	SetShade("�b/�G��������q/�G������q", SEMIHEAVY);

	CreateTextureSPover("�b/�G��������q/�G������q��", 0, Center, -50, "cg/anime/Left/blood_C_6.png");
	Zoom("�b/�G��������q/�G������q��", 0, 550, 500, null, true);
	SetShade("�b/�G��������q/�G������q��", SEMIHEAVY);

	CreateTextureSPover("�b/�G��������q/�G������q�O", 0, Center, -50, "cg/anime/Right/blood_B_8.png");
	Zoom("�b/�G��������q/�G������q�O", 0, 550, 500, null, true);
	SetShade("�b/�G��������q/�G������q�O", SEMIHEAVY);

	CreateTextureSP("�b/�G�����ʔw�i", 0, Center, Middle, "cg/bg/x/bg202021_3_�\�I�g�����Ə�����_���ʏ�q��.png");

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Fade("�b/�G���G����", 0, 1000, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);

	MoveCamera("�b", 0, -4, -70, 3000, null, true);





//��`�F���e�K

	$BTattooXPos="Center";
	$BTattooYPos=-809;
	CreateTextureEX("�b/�G�����h��", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������05_l.png");
	CreateTextureEX("�b/�G�����h�l", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������04_l.png");
	CreateTextureEX("�b/�G�����h�O", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������03_l.png");
	CreateTextureEX("�b/�G�����h��", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������02_l.png");
	CreateTextureEX("�b/�G�����h��", 502, $BTattooXPos, $BTattooYPos, "cg/ef/ef�����h���������01_l.png");
	Move("�b/�G�����h��*", 0, @0, @650, null, true);
	SetVertex("�b/�G�����h��*", center, bottom);
	Zoom("�b/�G�����h��*", 0, 0, 250, null, true);

	//MoveCamera("�b", 0, 0, 70, 2000, DxlAuto, false);

	CreateSE("SE01a","se�[��_�h��_������01L");
	MusicStart("SE01a",2000,600,-500,800,null,true);
	$TattooNext="�b/�G�����h��";
	DrawEffect($TattooNext, 0, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-500, DxlAuto, true);
	Move($TattooNext, 0, @0, @-150, DxlAuto, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);


//��Q�i�K
	CreateSE("SE01b","se�[��_�h��_������01L");
	MusicStart("SE01b",2000,600,500,1200,null,true);
	$TattooNext="�b/�G�����h��";
	$TattooBack="�b/�G�����h��";
	DrawEffect($TattooNext, 0, "MiddleWave", 300, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	//Fade($TattooBack, 8000, 0, null, false);
	FadeDelete("@�b/�G�����h��", 8000, null, false);

	//MoveCamera("�b", 0, 0, 55, 2000, Dxl1, false);


//��R�i�K
	SetVolumeEX("SE01a", 2000, 750, null);
	$TattooNext="�b/�G�����h�O";
	$TattooBack="�b/�G�����h��";
	DrawEffect($TattooNext, 0, "MiddleWave", 500, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	FadeDelete("@�b/�G�����h��", 0, null, false);

	//MoveCamera("�b", 0, 0, 20, 2000, Dxl1, false);


//��S�i�K
	SetVolumeEX("SE01b", 2000, 900, null);
	$TattooNext="�b/�G�����h�l";
	$TattooBack="�b/�G�����h�O";
	DrawEffect($TattooNext, 0, "MiddleWave", 700, 20, DxlAuto);
	Fade($TattooNext, 0, 950, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	FadeDelete("@�b/�G�����h�O", 0, null, false);

	//MoveCamera("�b", 0, 0, -15, 2000, Dxl1, false);


//��T�i�K
	SetVolumeEX("SE01a", 2000, 900, null);
	$TattooNext="�b/�G�����h��";
	$TattooBack="�b/�G�����h�l";
	DrawEffect($TattooNext, 0, "MiddleWave", 1000, 20, Dxl3);
	Fade($TattooNext, 0, 1000, null, false);
	Move($TattooNext, 0, @0, @-650, Dxl3, false);
	Zoom($TattooNext, 0, 250, 250, Dxl3, false);
	FadeDelete("@�b/�G�����h�l", 0, null, false);

	//MoveCamera("�b", 0, 0, -50, 2000, Dxl1, false);

	SetVertex("�G��", center, bottom);
	SetBlur("�G��", true, 3, 500, 30, false);
	Zoom("�G��", 2000, 1100, 1100, null, false);
	DrawTransition("�G��", 2000, 1000, 0, 100, null, "cg/data/worm_01_00_0.png", true);
	FadeDelete("�G��", 2000, null, true);

	Wait(200);

//���g���̐��_���E�̘a���ɖ߂��Ă���

	SetStream("@dm012*", 15355);
	SoundPlay("@dm012",1000,450,true);//�Â���

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.The fake world&, the one Koujaku was trying to run from&.

We went back to the room of the "Past"&.

Koujaku stands there&, with the black tattoo still 
slithering up his arms&.

I take a deep breath&, and look at Koujaku's sad eyes&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 5000, 600, null);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000010a01">
"&.&.&.You know by now&, don't you?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000020a01">
"I said this earlier&, but no matter how much you try to
 forget or run away from it&, you can't change the fact that
 it happened&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad3_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0016]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000030a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000040a01">
"You hurt a lot of people&, including your mother&.&.&.
 You can't erase that fact&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000050a02">
"Don't say it anymore&.&.&.!"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000060a01">
"I won't&. But I will tell you: you didn't want to&.&.&.
 commit a sin&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_angry3_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000070a02">
"&.&.&.I know&. I know it's unforgivable to let a person
 like me keep living&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000080a01">
"Your death is one way to pay that debt&. But&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_angry");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000090a01">
"But your death won't bring anything&. Not for your sins&,
 not for anything&. You're just unleashing your misery&."

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000100a01">
"&.&.&.Is that really okay?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000110a02">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_worry3");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000120a01">
"Is it okay for you just to run away like that?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

/*
	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000130a02">
"&.&.&.I'm going to run&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FwPro("fw���t_�ʏ�_worry3",10000,"fw���t_�ʏ�_worry");
//	Fw("fw���t_�ʏ�_think");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000140a01">
"Yeah&. That may be good for you&, but what about your
 members? Your team&, and even me&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

/*
	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");
*/

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000150a02">
"My team&.&.&. they'll be fine&. They'll find a new Head
 without me there&."

{	Fw("fw���t_�ʏ�_worry2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000160a01">
"Then what about me?"

{	Fw("fw���t_�ʏ�_worry4");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000170a01">
"What will happen to me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000180a02">
"You&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000190a01">
"Don't say I'll be fine without you&. I told you before not
 to put words in my mouth&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_worry3_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000200a02">
"&.&.&.&.&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000210a01">
"Because I won't be&. The same with the team&. You don't
 think strongly of others much&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000220a01">
"It'll be painful with you gone&, hearts will be broken&. But you're insisting that they'll be fine&, even though you're  hurting them?"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000230a01">
"Even if the wounds heal&, it'll never be the same&. It's not like it's just their body&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000240a01">
"Isn't it the same for you? You came to the island to heal
 your wounds&, but you lost yourself when you saw Ryuuhou
 again&."

{	Fw("fw���t_�ʏ�_worry2");}

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000250a01">
"Don't make me have to go through something like that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_shout2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000260a02">
"&.&.&.Then what should I do?"

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000270a01">
"There's only one other option&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G���Q", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_worry3_l.png");
	Request("�b/�G���G���Q", Smoothing);
	$YScale=ImageVertical("�b/�G���G���Q");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G���Q", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G���Q", 0, 250, 250, null, true);
	Fade("�b/�G���G���Q", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000280a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000290a01">
"You think you're losing control because of that tattoo&.
 But the one doing it is actually you&. That's a fact&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	FwPro("fw���t_�ʏ�_serious",11000,"fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000300a01">
"So you have to live your life with that tattoo&.
 As yourself&, Koujaku&.&.&. But&."

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000310a01">
"We&.&.I have to tell you something that has to do with you&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_think2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G���Q");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000320a02">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE01a", 2000, 400, null);
//	SetVolumeEX("SE01a", 2000, 750, null);
	$TattooNext="�b/�G�����h��";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0079]
Koujaku hangs his head&, trying to hold himself together&.

I feel like the tattoo at the base of his neck is actually growing weaker&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000330a01">
"No matter what you did&, or what you're burdened with&, the
 Koujaku I know will never change&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	CreateTextureEX("�b/�G���G����", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad2_l.png");
	Request("�b/�G���G����", Smoothing);
	$YScale=ImageVertical("�b/�G���G����");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G����", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G����", 0, 250, 250, null, true);
	Fade("�b/�G���G����", 200, 1000, null, true);
	Delete("�b/�G���G����");

	SetVolumeEX("SE01b", 2000, 400, null);
	$TattooNext="�b/�G�����h�l";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0081]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000340a02">
"Aoba&.&.&."

{	Fw("fw���t_�ʏ�_normal2");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000350a01">
"If you lose sight of yourself&, I'll tell you over and over what the real Koujaku is like&."

{	Fw("fw���t_�ʏ�_serious");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000360a01">
"I'll tell you that I always believed in him&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SetVolumeEX("SE01a", 2000, 400, null);
	$TattooNext="�b/�G�����h�O";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);



	CreateTextureEX("�b/�G���G���O", 500, Center, 576, "cg/st/l/st�g��_�o�[�T�N�\�I_sad_l.png");
	Request("�b/�G���G���O", Smoothing);
	$YScale=ImageVertical("�b/�G���G���O");
	$KJSetPos=576-($YScale/2)+40-317;
	Move("�b/�G���G���O", 0, @0, $KJSetPos, null, true);
	Zoom("�b/�G���G���O", 0, 250, 250, null, true);
	Fade("�b/�G���G���O", 200, 1000, null, true);
	Delete("�b/�G���G����");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0084]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm14/8000370a02">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000380a01">
"That's why you shouldn't give in&, Koujaku&."

//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000390a01">
"Don't give in to your past&, or your tattoo&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE01b", 2000, 400, null);
	$TattooNext="�b/�G�����h��";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

	MoveCamera("�b", 6000, 0, 0, 1000, AxlDxl, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0092]
The despair in Koujaku's face disappears&, and it begins to glow&.

The coiling black tattoo crumbles and peels off into 
nothing&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	SetVolumeEX("SE01*", 2000, 0, null);
	$TattooNext="�b/�G�����h��";
	//DrawEffect($TattooNext, 0, "MiddleWave", 20, 1, DxlAuto);

	Fade($TattooNext, 10000, 1000, null, false);
	Zoom($TattooNext, 10000, 250, 400, Axl3, false);
	DrawDelete($TattooNext, 10000, 100, null, "slide_02_01_1", false);

	SetVolumeEX("@dm*", 3000, 0, null);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0093]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm14/8000400a01">
"Koujaku&, I'm going to destroy you&. The past and the you
 who's holding you back&.&.&. I'm going to destroy them both&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	Delete("@�b/�G�����h��*");
	WaitAction("@�b", null);

	CreateEffectSP("�G������", 5000, Center, Middle, 1024, 576, "Plain");
	SetBlur("�G������", true, 3, 300, 80, false);

//���Ԃ���Ƌ������������N����A���E�Ƀr�L�r�L�Ɛ���ȃq�r�������Ă���
	CreateSE("SE01","se�[��_��z_�t���b�V���o�b�N01");
	CreateTextureEXadd("�G������", 4010, Center, Middle, "cg/ef/ef�N���A�̉̐�.jpg");
	SetBlur("�G������", true, 3, 800, 80, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Zoom("�G������", 0, 2200, 2200, null, true);

	Zoom("�G������", 3000, 1200, 1200, Dxl1, false);
	Zoom("�G������", 3000, 15000, 15000, Dxl3, false);
	Fade("�G������", 300, 300, Axl1, true);

	DrawTransition("�G������", 3000, 1000, 0, 100, null, "cg/data/zoom_01_00_0.png", false);
	Fade("�G������", 800, 0, null, false);
	Fade("�G������", 1300, 0, null, true);
	Delete("�G������");
	Delete("�G������");

	CreateSE("SE02","se�[��_���__�Ђ�01");
	MusicStart("SE02",0,700,0,2000,null,false);
	CreateColorEX("�G�F��", 4000, "FFFFFF");
	CreateTextureSPadd("�G���\�I�", 3990, Center, Middle, "cg/ef/effi�\�I����.png");
	Fade("�G���\�I�", 0, 150, null, true);
	Fade("�G�F��", 0, 1000, null, true);
	Wait(30);
	Fade("�G�F��", 70, 0, null, true);

	Wait(500);


//�������u���o�F�������E�ցv
//���o���[���ƌ��������𗧂ĂĐ��E������
	CreateGlass(10000);
	SetVolumeEX("@dm*", 1000, 0, null);
	GoGlassCrash();
	Wait(1000);

//�����t�ƍg���A�����̐��E�֖߂�

//�����t�@�C��["dm1490.nss"]

}
