//<continuation number="0">
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


scene dm5310.nss_MAIN
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
	$GameName = "dm5320.nss";

}


scene dm5310.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 10, "000000");

	CreateTextureSP("�G�w�i", 100, Center, Middle, "cg/ef/efbg����01.jpg");
	CreateTextureSPsub("�G�w�i��", 101, Center, Middle, "cg/ef/efbg����01.jpg");

	Zoom("�G�w�i", 0, 1200, 1200, null, true);

	Fade("�G�w�i��", 0, 800, null, true);

	DrawEffect("�G�w�i", 10000, "LowWave", 0, 150, null);

	Wait(1000);

	CreateSE("SE01","se�[��_����_������01L");
	MusicStart("SE01",1000,100,0,1000,null,true);

	FadeDelete("��w�i", 1000, null, true);

	Wait(1000);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
&.&.&.

&.&.&.

&.&.&.&.&.

&.&.&.&.&.I know this by now&.

It's this dream again&.

{SoundPlay("@dm006",0,450,true);}

The one where I can't move&.
Where my body is eaten&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE11","se�[��_����_������01L");
	MusicStart("SE11",1000,700,0,1000,null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
Even now&.&.&. It's still being eaten&.

There's nothing below my right elbow&.
There's nothing below my left knee&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
And now the lower part of my left elbow&.&.&.
And what's left below my right knee is being eaten&.

In this complete and utter darkness&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���΂���A�΂���A�Ƙr�Ƒ����H����Ռ�
//�����P�A�Q��������

	SetVolumeEX("SE*", 0, 200, null);
	CreateSE("SE01","se�[��_����_���ݐ�؂�01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("�G���o", 1000, Center, Middle, "cg/ef/ef�N���A���̉̐�_l.jpg");
	Zoom("�G���o", 350, 2500, 2500, Axl2, false);
	Rotate("�G���o", 350, @0, @0, @300, Dxl2,false);
	Wait(50);
	Fade("�G���o", 200, 1000, Dxl1, true);
	Wait(50);
	CreateColorSP("�G�F��", 5000, "BLACK");
	DrawTransition("�G�F��", 150, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	Delete("�G��*");

	SetVolumeEX("SE11", 500, 700, null);
	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0026]
But there's no pain&.
Just shock&.

In the sound of crunching&, the blackness completely 
devours my arms and legs&.

Gone forever&.
And then next&.&.&.

Is my&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���΂���A�Ɠ��̂��H����Ռ�
	SetVolumeEX("SE*", 0, 200, null);
	CreateSE("SE01","se�[��_����_���ݐ�؂�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("�G���o", 1000, Center, Middle, "cg/ef/ef�N���A���̉̐�_l.jpg");
	Zoom("�G���o", 350, 2500, 2500, Axl2, false);
	Rotate("�G���o", 350, @0, @0, @600, Dxl2,false);
	Wait(50);
	Fade("�G���o", 200, 1000, Dxl1, true);

	Wait(50);
	CreateColorSP("�G�F��", 5000, "BLACK");
	DrawTransition("�G�F��", 150, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Delete("�G��*");

	Wait(500);
	SetVolumeEX("SE11", 500, 700, null);
	FadeDelete("�G�F��", 500, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
&.&.&.My chest began to swell up as the darkness eats away at my torso&.

With an impulse&.

&.&.&.I want to destroy&.

Like how this darkness eats away at me&.

Anything&, everything&.

I want to destroy&. I want to destroy&.

I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.

I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.

That is my true wish&.

My true wish?

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSPsub("�G�F��", 5000, "WHITE");

	CreateTextureSP("�G�ꖇ�G", 100, Center, Middle, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");
	Move("�G�ꖇ�G", 0, @0, @-70, null, true);
	CreateSE("SE01","se�[��_����_�h��01");
	MusicStart("SE01",0,500,0,800,null,false);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
My&.&.&. true&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSPsub("�G�F��", 5000, "WHITE");

	CreateTextureSP("�G�ꖇ�G", 100, Center, Middle, "cg/ev/l/ev900�����P�l�̑��t_l.jpg");
	Move("�G�ꖇ�G", 0, @0, @-70, null, true);
	CreateSE("SE01","se�[��_����_�h��01");
	MusicStart("SE01",0,500,0,800,null,false);
	Fade("�G�F��", 0, 0, null, true);
	Wait(100);
	Fade("�G�F��", 1000, 1000, null, true);


	Delete("�G�w�i*");
	Delete("�G�ꖇ�G");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
I want to destroy&.

I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045a]
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&.
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045b]
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045c]
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
I want to destroy&. I want to destroy&. I want to destroy&. 
</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���������������t
	SetVolumeEX("SE*", 150, 0, null);
	SetVolumeEX("@dm*", 150, 0, null);
	CreateTextureEX("�G�ꖇ�G", 100, Center, Middle, "cg/ev/m/ev900�����P�l�̑��t_m.jpg");
	Fade("�G�F��", 1500, 0, null, true);

	Wait(2000);

	CreateSE("SE01","se�l��_�S��_�ۓ�02");
	MusicStart("SE01",0,1500,0,1000,null,false);
	Fade("�G�ꖇ�G", 0, 1000, null, true);
	Wait(200);
	Fade("�G�ꖇ�G", 800, 0, null, false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
�@�\�\�\�\�@I want to destroy�@�\�\�\�\

</PRE>
	SetTextM();
	TypeBeginFN(150);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	WaitAction("@�G�ꖇ�G", null);

	CreateEffectSP("�G���ʑ���", 20020, Center, Middle, 1024, 576, "Plain");

	CreatePlainSP("�G��", 20010);
	TextBoxDelete(0);
	Delete("@text0050");

	SetBlur("�G��", true, 4, 500, 200, false);
	Zoom("�G��", 2000, 10000, 10000, Axl3, false);
	FadeDelete("�G��", 2000, null, true);

	CreateColorSP("�G����", 25000, "BLACK");
	Zoom("�G�ꖇ�G", 300, 2000, 500, Dxl1, false);
	DrawTransition("�G����", 200, 0, 1000, 100, Dxl1, "cg/data/circle_03_00_1.png", true);

	ClearFadeAll(1000, true);

//�����t�@�C��["dm5320.nss"]

}
