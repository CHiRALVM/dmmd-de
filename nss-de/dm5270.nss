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


scene dm5270.nss_MAIN
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
	#bg304023_5_���]�^���[�ʗp��=true;

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm5280.nss";

}


scene dm5270.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\

	SoundPlay("@dm004",0,450,true);

	PrintBG("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");

	OnBG(10,"bg304021_5_���]�^���[�O�ʂ�");
	FadeBG(0,true);

	CreateTextureSP("�G�w�i100", 100, Center, -44, "cg/bg/m/bg301011_5_�v���`�i�W�F�C����ʂ�_m.jpg");

	Delete("��w�i");

	DrawDelete("�G�F��", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
An obvious aura of festivity surrounds the crowds of people
moving up and down the streets&. There's also an obvious
increase in the number of policemen&.

The policemen head towards the tower so the people don't 
get too close&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�G�w�i100");

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

	CreateTextureEX("�G�w�i101", 101, -512, -388, "cg/bg/l/bg304021_5_���]�^���[�O�ʂ�_l.jpg");
	Move("�G�w�i101", 500, @0, @-100, Dxl1, false);
	Fade("�G�w�i101", 500, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
It doesn't look like the crowds have calmed down from 
yesterday&, and the entire tower is surrounded by security&.

I don't think I can get in by myself&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	FadeDelete("�G�w�i101", 500, null, true);

	Fw("fw���t_�ʏ�_worry3");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000010a01">
"What'll we do&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�e�F�R�C�����o�͌��

	CreateSE("SE01","se����_�R�C��_���쉹02");
	MusicStart("SE01",0,700,0,1000,null,false);


	//���@�R�C�����o�ݒu�P
	CoilIntoSet();
	//���@�R�C�����o�ݒu�Q
	CoilStartSet();
	//���E�摜�ݒu�wCoilPictSet(X�ʒu,Y�ʒu,"�摜�p�X")�x
	CoilPictSet(303,16,"cg/ef/ef�R�C�����ҏ�Z�C_BASE02.png");

	//���@�R�C�����o�\��
	CoilStartFade();
	//���E�摜�\���P�i�ʏ�\���j
	CoilPictFade();

	//���R�C���҂�
	CoilWait();

	//���E�ǉ��摜�ݒu�wCoilPictCon("�i�b�g��","�摜�p�X")�x
	CoilPictCon("�Q","cg/bg/l/bg001011_1_�ɓ��S�i_l.jpg");
	//���E���[�u�i���̉摜�ɑ΂��āj�wCoilPictMO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x
	CoilPictMO("�Q",0,44,-576,Dxl1,true);
	//���E�Y�[���i���̉摜�ɑ΂��āj�wCoilPictZO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x//�����i�b�g�̎w��́u�����v
	CoilPictZO("�Q",0,1500,1500,Dxl1,true);

	//���E�ǉ��摜�\��
	CoilPictFadeCon("�Q");

	CreateSE("coilsound_move","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//���E�Y�[���i���̉摜�ɑ΂��āj�wCoilPictZO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x//�����i�b�g�̎w��́u�����v
	CoilPictZO("�Q",1000,1000,1000,Dxl1,true);

	//���R�C���҂�
	CoilWait();
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0013]
I open the map from the invitation on my Coil&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


	Fw("fw���t_�ʏ�_normal2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000020a01">
"Ren&, is there a back entrance to the tower?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("coilsound_move","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//���E���[�u�i���̉摜�ɑ΂��āj�wCoilPictMO("�i�b�g��",�b��,�lX,�lY,�e���|,�҂�)�x
	CoilPictMO("�Q",600,-143,-412,Dxl2,true);

	//���E�n�}��p����R�}���h
	CoilPictIconFade(@15,@70);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0015]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/7000030a06">
"&.&.&.According to the map&, there appears to be a staff
 entrance on the opposite side of the tower&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("coilsound_move","se����_�R�C��_�V�X�e���^�b�`");
	MusicStart("coilsound_move",0,700,0,1000,null,false);

	//���E�n�}��p����R�}���h
	CoilPictIconGo2("�Q",300,527,266,221,-583,2000,2000);

	//���R�C���҂�
	CoilWait();
	//���E�摜�`��ҋ@�i���[�r�[�Ƃ��j
	CoilPictWait();

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000040a01">
"Around here&, huh&.&.&.? The security might be a little less
 tight there&, let's go check it out&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);


	//���w�ėp�x�R�C�����[�P�wCoilDelete("�w��̃R�C����",�b��,���������X,���������Y)�x//�����W�w��͐�΂̂�
	CoilDelete("CoilPict",300,500,400);
	//���R�C���҂�
	CoilWait();

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
I don't have any time to waste&.
I head towards the other side of the tower&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateColorSP("�G����", 25000, "BLACK");

	DrawTransition("�G����", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg304023_5_���]�^���[�ʗp��");
	FadeBG(0,true);

	Wait(500);

	DrawDelete("�G����", 500, 100, null, "blind_01_00_1", true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
The tower's shadow darkened the staff entrance&, and there 
were only a few guards since people seldom came through&.

Two people were standing in front of a gate for letting in vehicles&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_serious");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000050a01">
"&.&.&.I think I can take them if it's only them two&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/7000060a06">
"There seem to be only two of them&, but you should still be cautious&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000070a01">
"Gotcha&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	SetVolumeEX("SE*", 200, 0, null);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
I pulled out the stun gun from my bag&.
//For once, the stun gun was actually used!

It's the one that Haga-san gave me right before I left the Old Resident District&.

There's a tall flower bed across from the gate&. If I go 
from that side&, I could probably make it work&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateTextureEX("�G�w�i102", 102, -350, -187, "cg/bg/m/bg304023_5_���]�^���[�ʗp��_m.jpg");

	Move("�G�w�i102", 1000, @-50, @0, Dxl1, false);
	Fade("�G�w�i102", 1000, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0032]
I run over to the shadow of the flower bed&, my body bent 
over&, and hold my breath as I go up to one of the guards&.

I try for the perfect timing&, and&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

	CreateSE("SE01","se�퓬_����_����01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se�퓬_����_������01");
	MusicStart("SE02",0,300,0,1500,null,false);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 150, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureEX("�G�ꖇ�G", 1000, 0, -283, "cg/ev/l/ev900���t�R��ėp_l.jpg");

	CreateTextureSP("�G�w�i103", 103, -469, -450, "cg/bg/l/bg304023_5_���]�^���[�ʗp��_l.jpg");
	Delete("�G�w�i102");

	DrawDelete("�G����", 150, 100, Dxl2, "slide_01_01_1", true);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�ꖇ�G", 450, -1024, 0, Dxl3, false);
	Fade("�G�ꖇ�G", 0, 1000, null, true);

	Wait(200);

	FadeDelete("�G�ꖇ�G", 200, Dxl1, true);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g��02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 3000);
	Shake("�G��", 300, 30, 0, 0, 0, 500, Axl1, true);
	Delete("�G��");

	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm52/7000080e16">
"What!? &.&.&.Guh!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	DeleteFw();

/*
	CreateTextureEXadd("�G�d��", 500, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	CreateTextureEXadd("�G�d����", 501, Center, Middle, "cg/ef/efx02�Ήԓd��01.jpg");
	Zoom("�G�d����", 0, 1300, 1300, null, true);
	Rotate("�G�d����", 0, @0, @180, @0, null,true);

	CreateSE("SE01","se�퓬_�X�^���K��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

//	Shake("�G�w�i103", 500, 50, 50, 0, 0, 500, Dxl1, false);
	Zoom("�G�d��", 200, 1200, 1200, Dxl2, false);
	Fade("�G�d��", 100, 1000, Dxl1, true);
	Wait(50);
	Fade("�G�d����", 0, 1000, Dxl1, true);
	Wait(50);
	Zoom("�G�d��*", 200, 1000, 1000, Dxl2, false);
	FadeDelete("�G�d��*", 100, Dxl1, true);
*/

	CreateSE("SE01","se�퓬_�X�^���K��_��01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("�G��", 3000);
	Shake("�G��", 300, 0, 10, 0, 0, 500, Axl1, true);
	Delete("�G��");

	CreateSE("SE01","se�[��_����_�Ή�02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fwm�x��B_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm52/7000090e17">
"Hey! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,900,null,false);

	CreateSE("SE02","se�l��_�Ռ�_�]�|01");
	MusicStart("SE02",0,700,0,1100,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
I throw one of them down with a roundhouse kick&, and then 
zap the other's neck with the stun gun&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
&.&.&.Well&, I gave him a light shock&.
Is he okay? He's not dead&, right?

I think he'll be fine since this is a handmade stungun 
from Haga-san&, but&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000100a01">
"This is unreal&.&.&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/7000110a06">
"You surprised me as well&."

{	Fw("fw���t_�ʏ�_shock");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000120a01">
"Me?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se����_��_����01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�w�i103", 500, @0, @-80, Dxl1, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
While quickly feeling the chest of the downed guard&, I 
look at Ren&, whose head is out of the bag&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwAM�@_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0051]
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/7000130a06">
"I didn't think you'd jump out like that&."

{	
	FwPro("fw���t_�ʏ�_normal2",6900,"fw���t_�ʏ�_normal");
}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000140a01">
"Things like this depend on timing and force&. You'll lose
 if you don't have those&.&.&. Oh&, there it is&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0052]
I pull out the guard's ID card that was hanging around 
his neck&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_����_�ߎC��26");
	MusicStart("SE01",0,700,0,1300,null,false);

	Move("�G�w�i103", 500, @0, @80, Dxl1, true);

	Fw("fw���t_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0053]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000150a01">
"We can get in with this guy&, right? Let's go&."

{	Fw("fwAM�@_�ʏ�_normal");}
//�y�@�z
<voice name="�@" class="�@" src="voice/dm52/7000160a06">
"&.&.&.Fists over words&, is it?"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_cheese2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm52/7000170a01">
"Depends on the time and place&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0061]
I took the card in my hand and rushed over to the door&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//���J�[�h�F�؁��h�A���J��
	CreateSE("SE01","se����_�R�C��_���쉹01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(50);
	CreateSE("SE02","se����_�R�C��_���쉹01");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(300);

	CreateSE("SE01","se����_�R�C��_���쉹03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(800);

	CreateSE("SE02","se����_�h�A���]����_���J��01");
	MusicStart("SE02",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0062]
I held it up to the confirmation monitor&, and the door 
unlocked&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//�����t�@�C��["dm5280.nss"]

}
