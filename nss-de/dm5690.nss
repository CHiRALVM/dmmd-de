//<continuation number="170">
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


scene dm5690.nss_MAIN
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
	#ev569�|�󂵂��^���[�����߂�=true;
	#ev569���t�A���@��������߂�=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5700.nss";

}


scene dm5690.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "FFFFFF");

	CreateTextureSP("�G�w�i100", 100, 0, 0, "cg/bg/bg304012_1_���]�^���[�S�i������.jpg");

	Delete("��w�i");
	FadeDelete("�G�F��", 3000, null, true);

//�����t�A�����̐��E��
//���L���̒��̋󂩂獡�̋�i�v���`�i�E�W�F�C�������j��\��

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.The sky&.

A blue&, far away sky&.

A blue&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 5000, "BLACK");

	DrawTransition("�G����", 1000, 0, 500, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	DrawTransition("�G����", 2000, 500, 1000, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(1000);

	CreateSE("SE01","se��_����_���l������ʂ�01L");
	MusicStart("SE01",3000,500,0,1000,null,true);

	CreateSE("SE02","se�敨_�p�g�J�[_�T�C����01L");
	MusicStart("SE02",3000,200,0,1000,null,true);

	CreateSE("SE03","se�敨_�~�}��_�T�C����01L");
	MusicStart("SE03",3000,100,0,1000,null,true);

	Wait(2000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000010a01">
"&.&.&.&.&."

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm56/9000020a02">
"&.&.&.Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DrawDelete("�G����", 2000, 100, Dxl2, "slide_05_00_0", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
When I opened my eyes&, a face took the place of the sky&.

This is&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm56/9000030a04">
"Are you all right? Master?"

//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm56/9000040a02">
"Are you hurt? Get up slowly&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE04","se�l��_����_����01");
	MusicStart("SE04",0,700,0,1000,null,false);

	CreateTextureEX("�G�d�u110", 110, -963, -994, "cg/ev/x/ev569�|�󂵂��^���[�����߂�_x.jpg");
	Move("�G�d�u110", 1000, -963, -909, Dxl1, false);
	Fade("�G�d�u110", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Koujaku supports my back and helps me up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreatePlainSP("�G��", 5000);

	CreateCamera("�b", 0, 0, 1000);
	SetAlias("�b","�b");

	CreateTextureSP("�b/�G��", 0, -210, -1087, "cg/ev/m/ev569�|�󂵂��^���[�����߂�_���ʊ��I�Ȃ�_m.jpg");

	CreateTextureSP("�b/�G�O", 500, -210, -828, "cg/ev/m/ev569�|�󂵂��^���[�����߂�_�w�i���I_m.png");
	Zoom("�b/�G�O", 0, 500, 500, null, true);

	FadeDelete("�G��", 500, null, true);

	Delete("�G�d�u110");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Koujaku&, Clear&, Noiz&, Mink&.&.&.
Everyone's here&.

What in the world&.&.&.
just happened?

I saw people running around in chaos and some speaking with
serious looks on their faces; I then looked to the sky&.

&.&.&.No&, I wasn't looking up at the sky&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE*", 3000, 0, null);

	SoundPlay("@dm015",0,450,true);

	MoveCamera("�b", 4000, @0, -1087, @0, AxlDxl, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
But the symbol of Platinum Jail&, Oval Tower&.&.&. 
was actually falling apart&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000050a01">
"&.&.&.The tower&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
The amazing sight leaves me speechless&. As I continue  
staring on&, Clear puts something on my lap&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�N���A_�ʏ�}�X�N����_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�N���A�z
<voice name="�N���A" class="�N���A" src="voice/dm56/9000060a04">
"Master&."

{
	Fw("fw���t_�ʏ�_shock2");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000070a01">
"!"

{
	Fw("fw�g��_�ʏ�_cool2");
}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm56/9000080a02">
"It was on the floor next to you&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
When I saw what was on my lap&, my heart stopped&.

It was a bundle of blue fur&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000090a01">
"&.&.&.Ren!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("�G��", 5000);

	Delete("�b");

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureSP("�G�w�i210", 210, 0, -91, "cg/ev/m/ev004���@�N��_m.jpg");
	Move("�G�w�i210", 1000, 0, -152, Dxl1, false);
	FadeDelete("�G��", 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I hold Ren and he immediately starts up&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se����_����_�@�N��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	CreateTextureEX("�G�w�i211", 211, 0, -152, "cg/ev/m/ev004���@�N��a_m.jpg");
	Fade("�G�w�i211", 500, 1000, null, true);

	Delete("�G�w�i210");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
His eyes blink open&.

&.&.&.It's all right&. He started up&.

Relieved&, I pet his fur&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0042]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000100a01">
"Ren&.&.&."

{
	Move("�G�w�i211", 500, 0, -125, Dxl1, true);
}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/9000110a06">
"Woof!"

//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000120a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000130a01">
"&.&.&.Ren?"

//�y�@�z
<voice name="�@" class="�@" src="voice/dm56/9000140a06">
"Woof!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
No&.&.&.

This can't be true&.&.&.

This isn't Ren&.&.&.

Where'd he go&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000150a01">
"Why&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
Unable to comprehend what's going on&, I just blankly stare at Ren&.

I don't feel any hint of Ren inside me&.&.&.at all&. 
Not the "other me" either&.

&.&.&.No&, could he&.&.&.

&.&.&.Is Ren gone?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��05");
	MusicStart("SE01",0,700,0,800,null,false);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateTextureEX("�G�d�u220", 220, -1022, -574, "cg/ev/l/ev569���t�A���@��������߂�_l.jpg");
	Move("�G�d�u220", 1000, -895, -574, Dxl1, false);
	Fade("�G�d�u220", 1000, 1000, null, true);

	Delete("�G�w�i211");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
He even said he wasn't going to go&.

That everything'd be like it always was as an Allmate&.

But&.&.&.

It's not&.

Ren is neither in this Allmate or in me&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
&.&.&.I've lost everyone&.

Sei&, the other me&, even Ren&.

There's no one left&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��08");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("�G�w�i221", 221, 0, -558, "cg/ev/l/ev569���t�A���@��������߂�_l.jpg");
	Move("�G�w�i221", 1000, -100, -436, Dxl1, false);
	Fade("�G�w�i221", 1000, 1000, null, true);

	Delete("�G�w�i220");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm56/9000170a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�r�߂�01");
	MusicStart("SE01",0,600,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
Ren starts to lick my cheek to try to console me&.

Ren&.&.&.

I can't think of anything else right now&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��08");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateTextureEX("�G�w�i222", 222, Center, Middle, "cg/ev/ev569���t�A���@��������߂�.jpg");
	Move("�G�w�i221", 1000, -100, -158, Dxl1, false);
	Fade("�G�w�i222", 1000, 1000, null, true);

	Delete("�G�w�i221");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
I did nothing but hold the bundle of fur in my arms as 
tight as I could&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm015", 3000, 700, null);

	ClearFadeAll(3000, true);

	Wait(5000);

//�����t�@�C��["dm5700.nss"]

}
