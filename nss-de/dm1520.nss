//<continuation number="250">
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


scene dm1520.nss_MAIN
{
//�������ݒ�
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){

		if($dm1510_SE11==true){Request("SE11",UnLock);$dm1500_SE11=false;}
		SkipOut();

	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���I�����X�N���v�g�y�уt���O�ݒ�
	//���C�x���g�b�f
	#ev152�g���嗧�����=true;
	#ev137�g�����oa=true;
	#bg304022_5_���]�^���[�O�ʂ����=true;
	#bg304031_5_���]�^���[�L��01����=true;

	//�����o������������
	$CautionAlarm=false;
	Request("@EFWIN/��������",UnLock);
	Request("@EFWIN/SE01",UnLock);

	//�����[�g�t���O�A�I�����A����GameName
	$PreGameName = $GameName;
	$GameName = "dm1530.nss";

}


scene dm1520.nss
{

	//���V�[���̓��ɕK���L�q
	$�X�N���v�g�o�[�W���� = " $Revision:  $";
	$�\���� = ModuleFileName();
	$�\���� = $SYSTEM_present_process;
	SystemInit();


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\


	PrintGO("��w�i", 30000);

	CreateColorSP("�G�F��", 5000, "000000");
	OnBG(10,"bg304031_5_���]�^���[�L��01����");
	FadeBG(0,true);

//���F�����Ή�
	if($dm1510_SE11==true){
		Request("SE11",UnLock);
		$dm1510_SE11=false;
	}else{
		CreateSE("SE11","se����_���]�^���[_�n��01L");
		MusicStart("SE11",0,700,0,1000,null,true);
	}

//�������u���F�����Ή��A�A���[���ƌx�񉹁v
	if($CautionAlarm==true){
		Request("@EFWIN/SE01", Play);
		Request("@EFWIN/��������", Play);
		SetVolumeEX("@EFWIN/SE01", 10, 300, null);
		SetVolumeEX("@EFWIN/��������", 10, 700, null);

	}else{
	CreateSE("@EFWIN/SE01","se����_���]�^���[_�A���[��01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",0,300,0,1000,null,true);
	CreateVOICEEX("@EFWIN/��������","dm15/0000010e14","��������");
	Request("@EFWIN/��������", Lock);
	MusicStart("@EFWIN/��������",0,700,0,1000,null,true);
	$CautionAlarm=true;
	}

	Request("@EFWIN/��������",UnLock);
	Request("@EFWIN/SE01",UnLock);

//���F�a�f�l�����p������
	SoundPlay("@dm008",0,450,true);

	FadeDelete("��w�i", 0, null, true);

	CreateSE("SE02","se�l��_����_����04����");
	CreateSE("SE01","se�l��_����_���02");

	CreateColorEXmul("�Gdm3520red", 500, RED);
	Fade("�Gdm3520red", 0, 600, null, true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("�G�V�F�C�N","bg304031_5_���]�^���[�L��01����",400,1);

//���ǂ��ǂ��ǂ��A�Ƒ����Ă���x�������l
	MusicStart("SE02",0,700,0,1000,null,false);
	Wait(1000);

	SetVolumeEX("SE02", 500, 0, null);
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawDelete("�G�F��", 150, 100, null, "slide_01_01_1", true);



	Fw("fwm�x��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0010]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm15/2000010e16">
"Hey!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	$CautionAlarm=false;
	SetVolumeEX("@SE11", 300, 0, null);
	SetVolumeEX("@EFWIN/��������", 10000, 0, null);
	SetVolumeEX("@EFWIN/SE01", 10000, 0, null);

	CreateSE("SE01","se�l��_����_����04����");//�������u�r�d�Fse�l��_����_����04�����v
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(300);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0011]
Suddenly&, a mob of guards come swarming after us&.

They must've gathered around the entrance&. And there's a 
lot of them&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw�g��_�o�[�T�N���C_angry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0012]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000020a02">
"They always come at the worst times&."

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/2000030e47">
"You guys are in our damn way!"

{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm15/2000040e48">
"Get outta heeeereeee!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE10","se��_�퓬_�퓬01L");
	MusicStart("SE10",0,600,0,1000,null,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0014]
That just stirred up the guards even more&, and they&, with 
their ravenous looks&, swoop down on us&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0020]
Both Koujaku and I are surrounded&.

{
	CreateSE("SEAK01","se����_���]�^���[_�n����02");
	MusicStart("SEAK01",0,1000,0,1000,null,false);
}
The floor keeps shaking uncontrollably&, and I hear the 
sound of something exploding&. <k>We don't have much time&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�g��_�o�[�T�N���C��������_angry");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0021]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000050a02">
"Aoba&, step back a bit&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	SetVolumeEX("SE10", 2000, 0, null);

	CreateTextureEX("�G�d�u10", 2000, -80, -76, "cg/ev/l/ev137�g�����oa_l.jpg");
	CreateTextureEX("�G�d�u00", 1900, Center, Middle, "cg/ev/ev137�g�����oa.jpg");
	CreateMovieEXadd("�G����", 1950, Center, 262, true, true, "dx/mvk100.ngs");
	Zoom("�G����",0,3000,3000,null,true);
	Request("�G����",Smoothing);

	CreateSE("SE01","se�퓬_����_���؂荂01");

	MusicStart("SE01",0,700,0,1000,null,false);

	Move("�G�d�u10", 2500, -380, @0, Dxl1, false);
	Fade("�G�d�u10", 500, 1000, null, true);
	Fade("�G�d�u00", 0, 1000, null, true);
	Fade("�G����", 0, 600, null, true);
	Wait(300);
	Fade("�G�d�u10", 500, 0, null, true);
	Delete("�G�d�u10");

	DeleteAllSt(0,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0022]
Koujaku takes a step forward and reaches for his blade&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fw���t_�ʏ�_shock2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0023]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/2000060a01">
"Hey&, Koujaku&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//{	Fw("fw�g��_�o�[�T�N���C_mad");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0024]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000070a02">
"I'll end it in one shot&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_���؂��02");
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0025]
As he says that&, Koujaku puts on a sly smile and waves his blade in a long stroke&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");

	CreateTextureEX("�G�d�u�O", 2000, -373, -55, "cg/ev/m/ev152�g���嗧�����_m.jpg");
	Request("�G�d�u�O",Smoothing);
	Zoom("�G�d�u�O", 0, 1500, 1500, null, true);

	CreateTextureEX("�G�d�u�P", 1000, Center, Middle, "cg/ev/ev152�g���嗧�����.jpg");

	CreateTextureEX("�G�d�u�R", 1000, Center, Middle, "cg/ev/ev152�g���嗧�����.jpg");


	CreateTextureEXadd("�G�d�u�Q", 1010, Center, Middle, "cg/ef/efx01���M01.jpg");
//	Zoom("�G�d�u�Q", 0, 1000, 1000, null, true);
	Request("�G�d�u�Q", Smoothing);

	Move("�G�d�u�Q", 0, -326, -436, null, true);
	Rotate("�G�d�u�Q", 0, @0, @0, -20, null,true);
	SetBlur("�G�d�u�Q", true, 2, 500, 50, false);
	SetBlur("�G�d�u�R", true, 3, 500, 50, false);

	SetVolumeEX("SE10", 300, 0, null);

	Move("�G�d�u�O", 900, -735, 230, Dxl1, false);
	Fade("�G�d�u�O", 300, 1000, Dxl1, true);

	Wait(500);
	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");

	Delete("�G�d�u10");
	Delete("�G�d�u00");
	Delete("�G�d�u�O");
//	Delete("�G����");
	Fade("�G����", 0, 1000, null, true);
	Move("�G����", 0, @0, 300, Dxl1, true);
	Rotate("�G����", 0, @0, 180, -15, null,true);

	Fade("�G�d�u�P", 0, 1000, null, true);
	Fade("�G�d�u�R", 0, 500, null, true);
	Fade("�G�d�u�Q", 0, 500, null, true);

	Zoom("�G�d�u�R", 400, 1500, 1500, Dxl1, false);
	Zoom("�G�d�u�Q", 500, 4000, 4000, Dxl1, false);
	Fade("�G�d�u�R", 300, 0, null, false);
	Fade("�G�d�u�Q", 400, 0, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�t���b�V����", 100, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0030]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000080a02">
"Orryyyyaaahhhhhhhhhh!!!!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");
	Wait(30);

	Delete("�G�d�u*");
	Delete("�G����");

	CreateSE("SE01","se�l��_�Ռ�_�]�|02����");

	CreateTextureEX("�G�w�i50", 500, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01����.jpg");
	SetBlur("�G�w�i50", true, 3, 300, 50, false);
	Fade("�G�w�i50", 0, 500, null, true);

	Zoom("�G�w�i50", 350, 2000, 2000, Dxl1, false);

	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("�G�t���b�V����", 100, null,true);
	FadeDelete("�G�w�i50",100,null,true);


{	Fw("fwm�x��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0031]
//�y�x���a�z
<voice name="�x���a" class="�x���a" src="voice/dm15/2000090e17">
"Whoaah!"

{	Fw("fwm�x��C_�ʏ�_normal");}
//�y�x���b�z
<voice name="�x���b" class="�x���b" src="voice/dm15/2000100e18">
"Wha-!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0033]
The wide blade mows down all the guards&, a huge gust 
throwing them down&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st�g��_�o�[�T�N���C��������_shout");
	FadeSt("C",200,true);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0034]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000110a02">
"Don't just fuckin' stand there!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fwm�g���`�[��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0035]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/2000120e47">
"Y-Yes!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_����_������01");

	CreateColorSPadd("�G�t���b�V����", 5000, "FFFFFF");

	CreateTextureSP("�G�d�u�P", 1000, Center, Middle, "cg/ev/ev152�g���嗧�����.jpg");

	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("�G�t���b�V����", 300, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0040]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000130a02">
"Uryah!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�퓬_�Ō�_�q�b�g����01");//�������u�r�d�Fse�퓬_�Ō�_�q�b�g����01�v
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("�G�F��", 4000, "FFFFFF");
	Wait(30);
	DeleteAllSt(0,true);

	Delete("�G�d�u�P");
	CreateTextureEX("�G�w�i50", 500, Center, Middle, "cg/bg/bg304031_5_���]�^���[�L��01����.jpg");
	SetBlur("�G�w�i50", true, 3, 300, 50, false);
	Fade("�G�w�i50", 0, 500, null, true);

	Zoom("�G�w�i50", 350, 2000, 2000, Dxl1, false);
	FadeDelete("�G�F��",100,null,true);

	FadeDelete("�G�w�i50", 100, null,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0041]
Koujaku goes to the guards and calls his men&, swinging his blade all the way there&.

Like dolls&, the guards fumble around and fall to the 
ground&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	CreateSE("SE01","se�l��_�Ռ�_�]�|01");
	MusicStart("SE01",0,700,0,1000,null,false);

{	Fw("fwm�x��A_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0043]
//�y�x���`�z
<voice name="�x���`" class="�x���`" src="voice/dm15/2000140e16">
"Guh!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("�G�d�u�O", 2000, -740, -199, "cg/ev/l/ev152�g���嗧�����_l.jpg");

	Move("�G�d�u�O", 300, -1019, -49, Dxl1, false);
	Fade("�G�d�u�O", 300, 1000, null, true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0044]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000150a02">
"Everyone&, in one clean sweep! You're not gonna die so calm your asses down!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	Fw("fw���t_�ʏ�_shock");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0045]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/2000160a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);


//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0050]
I'm taken aback&, and just stare at Koujaku as he downs 
guards with a smile&.

This is just&.&.&.amazing&.

I actually think that right now&, this is just like Koujaku to do&.

He pulls through&, bold and clear&, when he needs to&. Just 
like a long time ago&.

He'd fly in whenever I was being bullied&, just like the 
riot he is right now&.

&.&.&.He never changed&, ever&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	PrintGO("��w�i", 5000);
	OnBG(10,"bg304031_5_���]�^���[�L��01����");
	FadeBG(0,true);

	CreateColorEXmul("�Gdm3520red", 500, RED);
	Fade("�Gdm3520red", 0, 600, null, true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("�G�V�F�C�N","bg304031_5_���]�^���[�L��01����",400,1);

	CreateSE("SE11","se����_���]�^���[_�n��01L");
	MusicStart("SE11",500,700,0,1000,null,true);


//�������u���F�Ȃ炵���ς��ƌ܌������̂œK�Ƀ{�����[���𗎂Ƃ��ĉ������v
	CreateSE("@EFWIN/SE01","se����_���]�^���[_�A���[��01L");
	MusicStart("@EFWIN/SE01",5000,300,0,1000,null,true);

//�������u���F�Ȃ炵���ς��ƌ܌������̂œK�Ƀ{�����[���𗎂Ƃ��ĉ������v
	CreateVOICEEX("@EFWIN/��������","dm15/0000010e14","��������");
	MusicStart("@EFWIN/��������",5000,700,0,1000,null,true);

	FadeDelete("��w�i", 500, null, true);

	Fw("fw�g��_�o�[�T�N���C_pride");

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0055]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000170a02">
"&.&.&.Okay!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteAllSt(150,true);

	CreateSE("SE01","se�퓬_�Ō�_���؂荂01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st�g��_�o�[�T�N���C��������_angry");
	FadeSt("C",200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0056]
Koujaku stops; there's not a single guard left standing&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st�g��_�o�[�T�N���C��������_shout");
	FadeSt("C",200,true);}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0057]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000180a02">
"Guys&, let's go!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0060]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/2000190e47">
"Yes!"

{	St("C",740, @0,@0,"st�g��_�o�[�T�N���C��������_shout2");
	FadeSt("C",200,true);}
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000200a02">
"Aoba!"

{	Fw("fw���t_�ʏ�_normal");}
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/2000210a01">
"Yeah!"


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

	$dm1500BG_SHAKEP=6;
	CreateSE("SE01","se����_���]�^���[_����01");//�������u�r�d�Fse����_���]�^���[_����01�v
	MusicStart("SE01",0,700,0,1000,null,false);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0064]
The sound of an explosion resounds from inside the shaking tower&.

We run in a straight line to the outside of the entrance&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

	CreateSE("SE15","se�l��_����_����03����");//�������u�r�d�Fse�l��_����_����03�����v
	MusicStart("SE15",0,700,0,750,null,true);
	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 1000, 1000, null, true);

	Wait(1000);
	SetVolumeEX("@EFWIN/SE01", 1000, 0, null);
	SetVolumeEX("@EFWIN/��������", 1000, 0, null);
	SetVolumeEX("SE15", 1000, 0, null);
	SetVolumeEX("@dm*", 1000, 0, null);

	DeleteAllSt(0,true);
	Delete("@�Gdm3520*");
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro01");
	Wait(1000);

	OnBG(10,"bg304023_5_���]�^���[�ʗp��");
	FadeBG(0,true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("�G�V�F�C�N","bg304023_5_���]�^���[�ʗp��",400,1);

	FadeDelete("�G�F��", 1000, null, true);


{	Fw("fwm�g���`�[��B_�ʏ�_normal");}
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0067]
//�y�g�������o�[�a�z
<voice name="�g�������o�[�a" class="�g�������o�[�a" src="voice/dm15/2000220e48">
"We- We made it out!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

	Fw("fwm�g���`�[��A_�ʏ�_normal");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0070]
//�y�g�������o�[�`�z
<voice name="�g�������o�[�`" class="�g�������o�[�`" src="voice/dm15/2000230e47">
"We're outside!"

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0071]
We get a little farther away from the tower&, and then stop and turn around to look&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//	CreateSE("SE15","se�l��_����_����03����");//�������u�r�d�Fse�l��_����_����03�����v
//	MusicStart("SE15",0,700,0,750,null,true);

	CreateColorSP("�G����", 25000, "BLACK");
	DrawTransition("�G����", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@�Gdm3520*");
	Delete("@�G�V�F�C�N");
	Delete("@�Gdm1500Pro01");

	OnBG(10,"bg304022_5_���]�^���[�O�ʂ����");
	FadeBG(0,true);

	CreateTextureEX("�G�w�i", 100, Center, Middle, "cg/bg/bg304022_5_���]�^���[�O�ʂ����.jpg");
	Fade("�G�w�i", 0, 1000, null, true);

	SoundPlay("@dm015",0,450,true);

	CreateTextureEX("�G�w�i2", 100, -400, Middle, "cg/bg/l/bg304022_5_���]�^���[�O�ʂ����_l.jpg");
	Fade("�G�w�i2", 0, 1000, null, true);



	CreateSE("SE01","se����_���]�^���[_�n����01");
	CreateSE("SE02","se����_���]�^���[_�n����02");

	Move("�G�w�i2", 5000, -1024, @0, null, false);
	Shake("�G�w�i2", 5000, 0, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,600,0,1000,null,false);

	Shake_Loop("@�G�w�i","shake01");
	MoveFTP1("@�G�w�i",3500,10,2);


	CreateMovieSPsub("���P", 5500, 0, -200, true, true, "dx/mvk100.ngs");
	Zoom("���P", 1, 8000, 8000, null, true);

	CreateMovieSPsub("���Q", 500, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("���Q", 1, 5000, 5000, null, true);

Request("���P",SubRender);
Request("���Q",SubRender);

	DrawDelete("�G����", 200, 100, null, "slide_01_01_1", true);

//	SetVolumeEX("SE15", 1000, 0, null);

	Wait(1000);
	MusicStart("SE02",0,600,0,1000,null,false);
	Wait(1000);

	Fade("���P",500,500,null,false);
//	FadeDelete("���P",500,null,false);
	FadeDelete("�G�w�i2",500,null,true);

	Fw("fw���t_�ʏ�_worry4");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0072]
//�y���t�z
<voice name="���t" class="���t" src="voice/dm15/2000240a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0073]
The top of the tower swerves and crumbles down&, and black 
smoke starts to rise from it&.

Even though we're watching from the outside&, I know the 
whole thing is going to fall down&.


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//{	St("C",740, @0,@0,"st�g��_�o�[�T�N���C��������_shout2");
//	FadeSt("C",200,true);}

	Fw("fw�g��_�o�[�T�N���C_shout2");
//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0074]
//�y�g���z
<voice name="�g��" class="�g��" src="voice/dm15/2000250a02">
"It's dangerous here&. Let's get away&."


</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//	DeleteAllSt(200,true);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0075]
Koujaku pulls me along and we start to run away&, but I 
watch the tower over my shoulder&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
//	TextBoxDelete(0);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0080]
If Oval Tower falls&, Platinum Jail can't keep going&. Toue'splan will be foiled&.

I don't know why the tower started to crumble all of a 
sudden&.

But I can't help the feeling that something must've 
happened back there&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F��z�C���ɔz�M�Q�[���Ȃ񂩂��v
//���F�k���\�������������I�I
//�R�C��

	EfRecoIn1(10000,200);

//�����ɃR�C��
//==============================
	CreateTextureSP("�R�C��", 6000, 0, 0, "cg/sys/coil/ss/dm0480.png");
//==============================

	EfRecoIn2(500);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0082]
Those appareances of the princess&, those puzzling messages&.
The foreboding game transmissions&.

It might've been a trap from the start&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//�������u���o�F��z�����܂Łv
	EfRecoOut1(100);

//���̊Ԃō폜
//==============================
	Delete("�R�C��");
//==============================

	EfRecoIn2(400);

//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
<PRE @box0>
[text0090]
But&.&.&. something in that tower was leading us all the way 
here&.

&.&.&.It's a crazy idea&.

</PRE>
	SetText();
	TypeBegin(0);//�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\
	TextBoxDelete(0);

//���ڂ��[��A�^���[����

	CreateSE("SE01","se����_���]�^���[_�|��01");

	SetVolumeEX("@dm*", 1000, 0, null);

	Shake("�G�w�i", 10000, 5, 15, 0, 0, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEX("�G�F��", 5000, "000000");
	Fade("�G�F��", 5000, 1000, null, true);

	Wait(1500);

	Delete("��*");


	Shake_LoopDelete();

	SetVolumeEX("SE*", 2000, 0, null);

	Wait(1500);

	ClearFadeAll(1000, true);

//�����t�@�C��["dm1530.nss"]

}
